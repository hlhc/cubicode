import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:topics_repository/topics_repository.dart';

part 'topics_state.dart';
part 'topics_cubit.freezed.dart';

class TopicsCubit extends Cubit<TopicsState> {
  TopicsCubit({
    required AuthenticationRepository authenticationRepository,
    required TopicsRepository topicsRepository,
  })  : _authRepository = authenticationRepository,
        _topicsRepository = topicsRepository,
        super(TopicsState.initial()) {
    _watchUser();
  }

  final AuthenticationRepository _authRepository;
  final TopicsRepository _topicsRepository;

  @override
  Future<void> close() async {
    await _unwatchUser();
    return super.close();
  }

  Future<void> getTopics() async {
    try {
      emit(state.fromTopicsLoading());
      final topics = await _topicsRepository.getTopics();
      if (topics.isEmpty) {
        emit(state.fromTopicsEmpty());
        return;
      }
      emit(state.fromTopicsLoaded(topics));
    } on TopicsFailure catch (failure) {
      emit(state.fromTopicsFailure(failure));
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

extension _TopicsStateExtensions on TopicsState {
  TopicsState fromUser(User user) => copyWith(user: user);

  TopicsState fromTopicsLoading() => copyWith(status: TopicsStatus.loading);

  TopicsState fromTopicsEmpty() => copyWith(status: TopicsStatus.empty);

  TopicsState fromTopicsLoaded(List<Topic> topics) => copyWith(
        status: TopicsStatus.loaded,
        topics: topics,
      );

  TopicsState fromTopicsFailure(TopicsFailure failure) => copyWith(
        status: TopicsStatus.failure,
        failure: failure,
      );
}
