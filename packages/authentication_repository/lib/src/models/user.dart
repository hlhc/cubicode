import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// {@template user}
/// User model
///
/// [User.empty] represents an unauthenticated user.
/// {@endtemplate}
@freezed
abstract class User with _$User {
  /// {@macro user}
  const factory User({
    required String id,
    Map<String, List<String>>? completedQuizzes,
    Map<String, List<String>>? completedContent,
    String? email,
    bool? badge,
    String? name,
    String? photo,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  const User._();

  /// Empty user which represents an unauthenticated user.
  static const empty = User(id: '');

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;

  int totalCompletedQuizzesByTopic(String topicId) =>
      completedQuizzes?[topicId]?.length ?? 0;

  int totalCompletedContentByTopic(String topicId) =>
      completedContent?[topicId]?.length ?? 0;

  bool hasCompletedQuiz({
    required String quizId,
    required String topicId,
  }) =>
      completedQuizzes?[topicId]?.contains(quizId) ?? false;

  bool hasCompletedContent({
    required String contentId,
    required String topicId,
  }) =>
      completedContent?[topicId]?.contains(contentId) ?? false;
}
