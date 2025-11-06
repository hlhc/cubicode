// This file is "main.dart"
import 'package:blocky/src/definitions/blocky_args_def.dart';
import 'package:blocky/src/definitions/types.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blocky_block_def.freezed.dart';

@freezed
abstract class BlockyBlockDef with _$BlockyBlockDef {
  const factory BlockyBlockDef({
    required BlockyBlockAction action,
    required String message,
    required BlockyLiteralType output,
    required BlockyStyle style,
    @Default([]) List<BlockyArgsDef> args,
    @Default([]) List<BlockyPermission> permissions,
  }) = _BlockyBlockDef;
}
