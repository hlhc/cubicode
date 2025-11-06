// This file is "main.dart"
import 'package:blocky/src/definitions/types.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'var.freezed.dart';

@freezed
abstract class BlockyVar with _$BlockyVar {
  const factory BlockyVar({
    required BlockyLiteralType type,
    required dynamic value,
  }) = _BlockyVar;
}
