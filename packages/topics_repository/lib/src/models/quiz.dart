import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
abstract class Quiz with _$Quiz {
  const factory Quiz({
    required String id,
    required String title,
    required String description,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, Object?> json) => _$QuizFromJson(json);
}
