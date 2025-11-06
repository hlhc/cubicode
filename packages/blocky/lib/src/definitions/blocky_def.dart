// This file is "main.dart"
import 'package:blocky/blocky.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blocky_def.freezed.dart';

@freezed
abstract class BlockyDef with _$BlockyDef {
  const factory BlockyDef({
    required BlockyType type,
    required String title,
    required String message,
    required List<BlockyBlockDef> blocks,
  }) = _BlockyDef;
}
