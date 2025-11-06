import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projects_repository/projects_repository.dart';

part 'explore_cubit.freezed.dart';
part 'explore_state.dart';

class ExploreCubit extends Cubit<ExploreState> {
  ExploreCubit({
    required AuthenticationRepository authenticationRepository,
    required ProjectRepository projectRepository,
  })  : _authRepository = authenticationRepository,
        _projectRepository = projectRepository,
        super(ExploreState.initial()) {
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

  Future<void> getSharedProjects() async {
    try {
      emit(state.fromProjectsLoading());
      final topics = await _projectRepository.getSharedProjects();
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

extension _ProjectsStateExtensions on ExploreState {
  ExploreState fromUser(User user) => copyWith(user: user);

  ExploreState fromProjectsLoading() =>
      copyWith(status: ExploreProjectsStatus.loading);

  ExploreState fromProjectsEmpty() =>
      copyWith(status: ExploreProjectsStatus.empty);

  ExploreState fromProjectsLoaded(List<Project> projects) => copyWith(
        status: ExploreProjectsStatus.loaded,
        projects: projects,
      );

  ExploreState fromProjectsFailure(ProjectsFailure failure) => copyWith(
        status: ExploreProjectsStatus.failure,
        failure: failure,
      );
}
