part of 'quiz_cubit.dart';

enum QuizStatus { initial, loading, empty, loaded, failure }

final class QuizState extends Equatable {
  const QuizState._({
    this.status = QuizStatus.initial,
    this.quiz = Quiz.empty,
    this.failure,
  });

  const QuizState.initial() : this._();

  final Quiz quiz;
  final QuizStatus status;
  final QuizzesFailure? failure;

  @override
  List<Object> get props => [quiz, status];

  QuizState copyWith({
    Quiz? quiz,
    QuizStatus? status,
    QuizzesFailure? failure,
  }) {
    return QuizState._(
      quiz: quiz ?? this.quiz,
      status: status ?? this.status,
      failure: failure ?? this.failure,
    );
  }
}
