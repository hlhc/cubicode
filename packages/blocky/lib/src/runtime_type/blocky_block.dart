import 'package:blocky/blocky.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'blocky_block.freezed.dart';
part 'blocky_block.g.dart';

const _uuid = Uuid();

@freezed
abstract class BlockyBlock with _$BlockyBlock {
  const factory BlockyBlock({
    @JsonKey(name: 'i') required String id,
    @JsonKey(name: 'a') required BlockyBlockAction action,
    @JsonKey(name: 'o') required BlockyLiteralType output,
    @JsonKey(name: 's') required BlockyStyle style,
    @JsonKey(name: 'p') @Default({}) Map<String, dynamic> args,
    @JsonKey(name: 'd') @Default([]) List<String> dependent,
    @JsonKey(name: 'm') String? parent,
  }) = _BlockyBlock;

  const BlockyBlock._();

  factory BlockyBlock.fromJson(Map<String, Object?> json) =>
      _$BlockyBlockFromJson(json);

  factory BlockyBlock.fromDef(BlockyBlockDef blockDef, {BlockyBlock? parent}) =>
      BlockyBlock(
        id: _uuid.v6(),
        action: blockDef.action,
        output: blockDef.output,
        style: blockDef.style,
        parent: parent?.id,
      );
}
