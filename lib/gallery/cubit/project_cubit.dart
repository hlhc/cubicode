import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projects_repository/projects_repository.dart';

part 'project_cubit.freezed.dart';
part 'project_state.dart';

class ProjectCubit extends Cubit<ProjectState> {
  ProjectCubit({
    required AuthenticationRepository authenticationRepository,
    required ProjectRepository projectRepository,
  })  : _authRepository = authenticationRepository,
        _projectRepository = projectRepository,
        super(ProjectState.initial()) {
    _watchUser();
  }

  final AuthenticationRepository _authRepository;
  final ProjectRepository _projectRepository;

  @override
  Future<void> close() async {
    await _unwatchUser();
    return super.close();
  }

  Future<void> getProjects() async {
    try {
      emit(state.fromProjectsLoading());
      final topics =
          await _projectRepository.getProjects(_authRepository.currentUser.id);
      if (topics.isEmpty) {
        emit(state.fromProjectsEmpty());
        return;
      }
      emit(state.fromProjectsLoaded(topics));
    } on ProjectsFailure catch (failure) {
      emit(state.fromProjectsFailure(failure));
    }
  }

  void _onUserChanged(User user) {
    emit(state.fromUser(user));
  }

  late final StreamSubscription<User> _userSubscription;
  void _watchUser() {
    _userSubscription = _authRepository.user.listen(_onUserChanged);
  }

  Future<void> _unwatchUser() {
    return _userSubscription.cancel();
  }
}

extension _ProjectsStateExtensions on ProjectState {
  ProjectState fromUser(User user) => copyWith(user: user);

  ProjectState fromProjectsLoading() =>
      copyWith(status: ProjectsStatus.loading);

  ProjectState fromProjectsEmpty() => copyWith(status: ProjectsStatus.empty);

  ProjectState fromProjectsLoaded(List<Project> projects) => copyWith(
        status: ProjectsStatus.loaded,
        projects: projects,
      );

  ProjectState fromProjectsFailure(ProjectsFailure failure) => copyWith(
        status: ProjectsStatus.failure,
        failure: failure,
      );
}
