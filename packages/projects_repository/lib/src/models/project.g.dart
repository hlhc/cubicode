// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      user: json['user'] as String,
      title: json['title'] as String,
      shared: json['shared'] as bool,
      color: json['color'] as int,
      plainCode: json['plainCode'] as String,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'title': instance.title,
      'shared': instance.shared,
      'color': instance.color,
      'plainCode': instance.plainCode,
    };
