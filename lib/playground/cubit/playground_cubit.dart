import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:blocky/blocky.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projects_repository/projects_repository.dart';
import 'package:quizzes_repository/quizzes_repository.dart';

part 'playground_cubit.freezed.dart';
part 'playground_state.dart';

class PlaygroundCubit extends Cubit<PlaygroundState> {
  PlaygroundCubit({
    required AuthenticationRepository authenticationRepository,
    required ProjectRepository projectsRepository,
  })  : _authRepository = authenticationRepository,
        _projectsRepository = projectsRepository,
        super(PlaygroundState.initial());

  final AuthenticationRepository _authRepository;
  final ProjectRepository _projectsRepository;
  Timer? _autoSaveTimer;

  void updateName(String title) {
    emit(state.copyWith(title: title));
  }

  void addBlock(BlockyBlock block) {
    final newBlocks = List<BlockyBlock>.from(state.program.blocks)..add(block);
    emit(state.copyWith(program: state.program.copyWith(blocks: newBlocks)));
  }

  BlockyBlock removeBlockAt(int index) {
    final newBlocks = List<BlockyBlock>.from(state.program.blocks);
    final oldBlock = newBlocks.removeAt(index);
    emit(state.copyWith(program: state.program.copyWith(blocks: newBlocks)));
    return oldBlock;
  }

  void removeBlock(BlockyBlock block) {
    final newBlocks = List<BlockyBlock>.from(state.program.blocks)
      ..remove(block);
    emit(state.copyWith(program: state.program.copyWith(blocks: newBlocks)));
  }

  void insertBlock(BlockyBlock block, int index) {
    final newBlocks = List<BlockyBlock>.from(state.program.blocks)
      ..insert(index, block);
    emit(state.copyWith(program: state.program.copyWith(blocks: newBlocks)));
  }

  void addBlocks(BlockyDef blocky) {
    BlockyBlock? blk;
    blocky.blocks.forEachIndexed((index, block) {
      final addBlk = BlockyBlock.fromDef(block, parent: blk);
      addBlock(addBlk);
      if (blocky.blocks.length > 1 && index == 0) {
        blk = addBlk;
      }
    });
  }

  void useQuiz(Quiz quiz) {
    emit(state.copyWith(quiz: quiz, title: quiz.title));
  }

  void setBlockArg(BlockyBlock block, String key, dynamic value) {
    final newBlocks = [
      for (final blk in state.program.blocks)
        if (blk.id == block.id)
          blk.copyWith(args: {...blk.args, key: value})
        else
          blk,
    ];
    emit(state.copyWith(program: state.program.copyWith(blocks: newBlocks)));
  }

  Future<void> share() async {
    emit(state.copyWith(shared: true));
    await save();
  }

  Future<void> unshare() async {
    emit(state.copyWith(shared: false));
    await save();
  }

  Future<void> save() async {
    if (state.readonly) return;
    if (state.quiz != null) return;
    if (state.id != null) {
      await _projectsRepository.updateProject(
        Project(
          id: state.id,
          user: _authRepository.currentUser.id,
          title: state.title,
          color: Random().nextInt(0xffffff),
          plainCode: json.encode(state.program.toJson()),
          shared: state.shared,
        ),
      );
    } else {
      final result = await _projectsRepository.createProject(
        Project(
          user: _authRepository.currentUser.id,
          title: state.title,
          color: Random().nextInt(0xffffff),
          plainCode: json.encode(state.program.toJson()),
          shared: state.shared,
        ),
      );
      emit(state.copyWith(id: result.id));
    }
  }

  Future<void> fork() async {
    if (state.quiz != null) return;
    final result = await _projectsRepository.createProject(
      Project(
        user: _authRepository.currentUser.id,
        title: 'Fork: ${state.title}',
        color: Random().nextInt(0xffffff),
        plainCode: json.encode(state.program.toJson()),
        shared: state.shared,
      ),
    );
    emit(state.copyWith(id: result.id, readonly: false));
  }

  Future<void> delete() async {
    if (state.id != null) {
      await _projectsRepository.deleteProject(state.id);
    }
  }

  Future<void> restore(Project? project) async {
    if (project != null) {
      final program = BlockyProgram.fromJson(
        json.decode(project.plainCode) as Map<String, dynamic>,
      );
      emit(
        state.copyWith(
          title: project.title,
          shared: project.shared,
          program: program,
          id: project.id,
          checksum: program.checksum,
          readonly: project.user != _authRepository.currentUser.id,
        ),
      );
    }
  }

  @override
  void onChange(Change<PlaygroundState> change) {
    super.onChange(change);
    if (state.readonly) return;
    if (_autoSaveTimer != null) {
      _autoSaveTimer!.cancel();
    }
    _autoSaveTimer = Timer(const Duration(seconds: 5), () {
      if (!isClosed && state.quiz == null) {
        save();
      }
      _autoSaveTimer?.cancel();
    });
  }
}
