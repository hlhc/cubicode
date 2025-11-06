import 'package:blocky/src/definitions/types.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blocky_args_def.freezed.dart';

// TODO(checkType): is checkType redundant?
typedef ConditionCheck = bool Function(Map<String, dynamic> args);

@freezed
abstract class BlockyArgsDef with _$BlockyArgsDef {
  const factory BlockyArgsDef.dummyText({
    required String text,
    ConditionCheck? onCondition,
  }) = BlockyArgsDefDummyText;

  const factory BlockyArgsDef.inputStr({
    required String name,
    required String key,
    @Default(BlockyLiteralType.str) BlockyLiteralType checkType,
    @Default(false) bool nilable,
    ConditionCheck? onCondition,
  }) = BlockyArgsDefInputStr;

  const factory BlockyArgsDef.inputNum({
    required String name,
    required String key,
    @Default(BlockyLiteralType.num) BlockyLiteralType checkType,
    @Default(false) bool nilable,
    ConditionCheck? onCondition,
  }) = BlockyArgsDefInputNum;

  const factory BlockyArgsDef.inputBool({
    required String name,
    required String key,
    @Default(BlockyLiteralType.bool) BlockyLiteralType checkType,
    @Default(false) bool nilable,
    ConditionCheck? onCondition,
  }) = BlockyArgsDefInputBool;

  const factory BlockyArgsDef.inputVar({
    required String name,
    required String key,
    @Default(BlockyLiteralType.str) BlockyLiteralType checkType,
    @Default(false) bool nilable,
    ConditionCheck? onCondition,
  }) = BlockyArgsDefInputVar;

  const factory BlockyArgsDef.inputEnum({
    required String name,
    required String key,
    required Map<String, String> enumeration,
    @Default(BlockyLiteralType.str) BlockyLiteralType checkType,
    @Default(false) bool nilable,
    ConditionCheck? onCondition,
  }) = BlockyArgsDefInputEnum;
}
