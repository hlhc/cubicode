// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocky_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlockyProgramImpl _$$BlockyProgramImplFromJson(Map<String, dynamic> json) =>
    _$BlockyProgramImpl(
      version: json['v'] as String,
      blocks: (json['b'] as List<dynamic>)
          .map((e) => BlockyBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      permissions: (json['p'] as List<dynamic>)
          .map((e) => $enumDecode(_$BlockyPermissionEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$BlockyProgramImplToJson(_$BlockyProgramImpl instance) =>
    <String, dynamic>{
      'v': instance.version,
      'b': instance.blocks,
      'p': instance.permissions
          .map((e) => _$BlockyPermissionEnumMap[e]!)
          .toList(),
    };

const _$BlockyPermissionEnumMap = {
  BlockyPermission.camera: 'camera',
  BlockyPermission.location: 'location',
  BlockyPermission.microphone: 'microphone',
  BlockyPermission.notification: 'notification',
  BlockyPermission.storage: 'storage',
};
