// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonNameModel _$_$_LessonNameModelFromJson(Map<String, dynamic> json) {
  return _$_LessonNameModel(
    json['id'] as String,
    name: json['title'] as String?,
    description: json['description'] as String?,
    active: json['active'] as bool? ?? true,
  );
}

Map<String, dynamic> _$_$_LessonNameModelToJson(_$_LessonNameModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.name,
      'description': instance.description,
      'active': instance.active,
    };
