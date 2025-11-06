import 'dart:convert';

import 'package:blocky/blocky.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
abstract class Project with _$Project {
  const factory Project({
    required String user,
    required String title,
    required bool shared,
    required int color,
    required String plainCode,
    @JsonKey(includeToJson: false) String? id,
  }) = _Project;

  const Project._();

  factory Project.fromJson(Map<String, Object?> json) =>
      _$ProjectFromJson(json);

  factory Project.none() => Project(
        user: '',
        title: '',
        shared: false,
        color: 0xffffff,
        plainCode: jsonEncode(BlockyProgram.empty().toJson()),
      );

  bool get isNone => this == Project.none();
  bool get isNotNone => !isNone;
}
