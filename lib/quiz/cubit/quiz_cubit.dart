import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quizzes_repository/quizzes_repository.dart';

part 'quiz_state.dart';

class QuizCubit extends Cubit<QuizState> {
  QuizCubit({
    required AuthenticationRepository authenticationRepository,
    required QuizzesRepository quizzesRepository,
  })  : _authenticationRepository = authenticationRepository,
        _quizzesRepository = quizzesRepository,
        super(const QuizState.initial());

  final AuthenticationRepository _authenticationRepository;
  final QuizzesRepository _quizzesRepository;

  Future<void> getQuiz(String quizId) async {
    try {
      emit(state.fromQuizLoading());
      final quiz = await _quizzesRepository.getQuiz(quizId);
      emit(state.fromQuizLoaded(quiz));
    } on QuizzesFailure catch (failure) {
      emit(state.fromQuizFailure(failure));
    }
  }

  void markQuizCompleted({
    required String quizId,
    required String topicId,
  }) {
    final hasCompletedQuiz = _authenticationRepository.currentUser
        .hasCompletedQuiz(quizId: quizId, topicId: topicId);
    if (!hasCompletedQuiz) {
      unawaited(
        _authenticationRepository.markQuizCompleted(
          quizId: quizId,
          topicId: topicId,
        ),
      );
      unawaited(
        _authenticationRepository.markBadge(),
      );
    }
  }
}

extension _TopicsStateExtensions on QuizState {
  QuizState fromQuizLoading() => copyWith(status: QuizStatus.loading);

  QuizState fromQuizLoaded(Quiz quiz) => copyWith(
        status: QuizStatus.loaded,
        quiz: quiz,
      );

  QuizState fromQuizFailure(QuizzesFailure failure) => copyWith(
        status: QuizStatus.failure,
        failure: failure,
      );
}
