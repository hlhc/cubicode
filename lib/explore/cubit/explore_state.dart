part of 'explore_cubit.dart';

enum ExploreProjectsStatus { initial, loading, empty, loaded, failure }

@freezed
abstract class ExploreState with _$ExploreState {
  const factory ExploreState({
    required User user,
    required ExploreProjectsStatus status,
    required List<Project> projects,
    required ProjectsFailure failure,
  }) = _ExploreState;

  const ExploreState._();

  factory ExploreState.initial() => const ExploreState(
        user: User.empty,
        status: ExploreProjectsStatus.initial,
        projects: [],
        failure: ProjectsFailure.none,
      );

  bool get isInitial => status == ExploreProjectsStatus.initial;
  bool get isLoading => status == ExploreProjectsStatus.loading;
  bool get isEmpty => status == ExploreProjectsStatus.empty;
  bool get isLoaded => status == ExploreProjectsStatus.loaded;
  bool get isFailure => status == ExploreProjectsStatus.failure;
}
