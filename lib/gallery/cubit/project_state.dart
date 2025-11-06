part of 'project_cubit.dart';

enum ProjectsStatus { initial, loading, empty, loaded, failure }

@freezed
abstract class ProjectState with _$ProjectState {
  const factory ProjectState({
    required User user,
    required ProjectsStatus status,
    required List<Project> projects,
    required ProjectsFailure failure,
  }) = _ProjectState;

  const ProjectState._();

  factory ProjectState.initial() => const ProjectState(
        user: User.empty,
        status: ProjectsStatus.initial,
        projects: [],
        failure: ProjectsFailure.none,
      );

  bool get isInitial => status == ProjectsStatus.initial;
  bool get isLoading => status == ProjectsStatus.loading;
  bool get isEmpty => status == ProjectsStatus.empty;
  bool get isLoaded => status == ProjectsStatus.loaded;
  bool get isFailure => status == ProjectsStatus.failure;
}
