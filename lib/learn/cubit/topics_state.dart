part of 'topics_cubit.dart';

enum TopicsStatus { initial, loading, empty, loaded, failure }

@freezed
abstract class TopicsState with _$TopicsState {
  const factory TopicsState({
    required User user,
    required TopicsStatus status,
    required List<Topic> topics,
    required TopicsFailure failure,
  }) = _TopicsState;

  const TopicsState._();

  factory TopicsState.initial() => const TopicsState(
        user: User.empty,
        status: TopicsStatus.initial,
        topics: [],
        failure: TopicsFailure.none,
      );

  bool get isInitial => status == TopicsStatus.initial;
  bool get isLoading => status == TopicsStatus.loading;
  bool get isEmpty => status == TopicsStatus.empty;
  bool get isLoaded => status == TopicsStatus.loaded;
  bool get isFailure => status == TopicsStatus.failure;
}
