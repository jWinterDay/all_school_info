// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonModel _$_$_LessonModelFromJson(Map<String, dynamic> json) {
  return _$_LessonModel(
    json['lesson_name'] as String,
    json['date_unix_ms'] as int,
    json['teacher_name'] as String,
  );
}

Map<String, dynamic> _$_$_LessonModelToJson(_$_LessonModel instance) => <String, dynamic>{
      'lesson_name': instance.lessonName,
      'date_unix_ms': instance.dateUnixMs,
      'teacher_name': instance.teacherName,
    };
