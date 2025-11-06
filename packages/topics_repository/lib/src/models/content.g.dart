// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentImpl _$$ContentImplFromJson(Map<String, dynamic> json) =>
    _$ContentImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => Step.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'steps': instance.steps,
    };

_$StepImpl _$$StepImplFromJson(Map<String, dynamic> json) => _$StepImpl(
      text: json['text'] as String,
      image: json['img'] as String,
    );

Map<String, dynamic> _$$StepImplToJson(_$StepImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'img': instance.image,
    };
