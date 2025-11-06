import 'dart:convert';

import 'package:blocky/blocky.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blocky_program.freezed.dart';
part 'blocky_program.g.dart';

@freezed
abstract class BlockyProgram with _$BlockyProgram {
  const factory BlockyProgram({
    @JsonKey(name: 'v') required String version,
    @JsonKey(name: 'b') required List<BlockyBlock> blocks,
    @JsonKey(name: 'p') required List<BlockyPermission> permissions,
  }) = _BlockyProgram;

  const BlockyProgram._();

  factory BlockyProgram.fromJson(Map<String, Object?> json) =>
      _$BlockyProgramFromJson(json);

  factory BlockyProgram.empty() => const BlockyProgram(
        version: '2023-11-18',
        blocks: [],
        permissions: [],
      );

  String get checksum {
    final json = toJson();
    final str = jsonEncode(json);
    return sha256.convert(utf8.encode(str)).toString();
  }
}
