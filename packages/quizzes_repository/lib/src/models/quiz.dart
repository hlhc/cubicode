import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
abstract class Quiz with _$Quiz {
  const factory Quiz({
    required String id,
    required String title,
    required String description,
    required String topic,
    required List<Answer> answer,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, Object?> json) => _$QuizFromJson(json);

  const Quiz._();

  static const empty = Quiz(
    id: '',
    title: '',
    description: '',
    topic: '',
    answer: [],
  );
}

@freezed
abstract class Answer with _$Answer {
  const factory Answer({
    required String terminalBuffer,
  }) = _Answer;

  factory Answer.fromJson(Map<String, Object?> json) => _$AnswerFromJson(json);
}
