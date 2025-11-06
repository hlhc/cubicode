// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocky_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlockyBlockImpl _$$BlockyBlockImplFromJson(Map<String, dynamic> json) =>
    _$BlockyBlockImpl(
      id: json['i'] as String,
      action: $enumDecode(_$BlockyBlockActionEnumMap, json['a']),
      output: $enumDecode(_$BlockyLiteralTypeEnumMap, json['o']),
      style: $enumDecode(_$BlockyStyleEnumMap, json['s']),
      args: json['p'] as Map<String, dynamic>? ?? const {},
      dependent:
          (json['d'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      parent: json['m'] as String?,
    );

Map<String, dynamic> _$$BlockyBlockImplToJson(_$BlockyBlockImpl instance) =>
    <String, dynamic>{
      'i': instance.id,
      'a': _$BlockyBlockActionEnumMap[instance.action]!,
      'o': _$BlockyLiteralTypeEnumMap[instance.output]!,
      's': _$BlockyStyleEnumMap[instance.style]!,
      'p': instance.args,
      'd': instance.dependent,
      'm': instance.parent,
    };

const _$BlockyBlockActionEnumMap = {
  BlockyBlockAction.textPrint: 'textPrint',
  BlockyBlockAction.varSet: 'varSet',
  BlockyBlockAction.conditionIf: 'conditionIf',
  BlockyBlockAction.conditionElse: 'conditionElse',
  BlockyBlockAction.conditionEndIf: 'conditionEndIf',
  BlockyBlockAction.loopWhile: 'loopWhile',
  BlockyBlockAction.loopEndWhile: 'loopEndWhile',
  BlockyBlockAction.soundPlay: 'soundPlay',
  BlockyBlockAction.locationGet: 'locationGet',
  BlockyBlockAction.mathCompute: 'mathCompute',
};

const _$BlockyLiteralTypeEnumMap = {
  BlockyLiteralType.bool: 'bool',
  BlockyLiteralType.num: 'num',
  BlockyLiteralType.str: 'str',
  BlockyLiteralType.map: 'map',
  BlockyLiteralType.arr: 'arr',
  BlockyLiteralType.any: 'any',
  BlockyLiteralType.nil: 'nil',
};

const _$BlockyStyleEnumMap = {
  BlockyStyle.logicBlock: 'logicBlock',
  BlockyStyle.textBlock: 'textBlock',
  BlockyStyle.loopBlock: 'loopBlock',
  BlockyStyle.soundBlock: 'soundBlock',
  BlockyStyle.locationBlock: 'locationBlock',
};
