import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:topics_repository/src/models/content.dart';
import 'package:topics_repository/src/models/quiz.dart';

part 'topic.freezed.dart';
part 'topic.g.dart';

@freezed
abstract class Topic with _$Topic {
  const factory Topic({
    required String id,
    required String title,
    @JsonKey(name: 'img') required String image,
    required List<Content> content,
    required List<Quiz> quizzes,
  }) = _Topic;

  const Topic._();

  factory Topic.fromJson(Map<String, Object?> json) => _$TopicFromJson(json);

  static const none = Topic(
    id: '',
    title: '',
    image: '',
    content: [],
    quizzes: [],
  );

  bool get isNone => this == Topic.none;
  bool get isNotNone => !isNone;

  int get totalQuizzes => quizzes.length;

  double completedProgress(int completedQuizzes) {
    if (totalQuizzes == 0) {
      return 0;
    }
    return completedQuizzes / totalQuizzes;
  }

  String progress(int completedQuizzes) {
    return '$completedQuizzes / $totalQuizzes';
  }
}
