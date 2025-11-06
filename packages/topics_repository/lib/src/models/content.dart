import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';
part 'content.g.dart';

@freezed
abstract class Content with _$Content {
  const factory Content({
    required String id,
    required String title,
    required String content,
    List<Step>? steps,
  }) = _Content;

  factory Content.fromJson(Map<String, Object?> json) =>
      _$ContentFromJson(json);
}

@freezed
abstract class Step with _$Step {
  const factory Step({
    required String text,
    @JsonKey(name: 'img') required String image,
  }) = _Step;

  factory Step.fromJson(Map<String, Object?> json) => _$StepFromJson(json);
}
