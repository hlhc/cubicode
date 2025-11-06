// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      completedQuizzes:
          (json['completedQuizzes'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      completedContent:
          (json['completedContent'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      email: json['email'] as String?,
      badge: json['badge'] as bool?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'completedQuizzes': instance.completedQuizzes,
      'completedContent': instance.completedContent,
      'email': instance.email,
      'badge': instance.badge,
      'name': instance.name,
      'photo': instance.photo,
    };
