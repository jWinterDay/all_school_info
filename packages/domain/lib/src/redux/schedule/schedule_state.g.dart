// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleState _$_$_ScheduleStateFromJson(Map<String, dynamic> json) {
  return _$_ScheduleState(
    loading: json['loading'] as bool? ?? false,
    firstLoading: json['first_loading'] as bool? ?? true,
    lessonList:
        (json['lesson_list'] as List<dynamic>?)?.map((e) => LessonModel.fromJson(e as Map<String, dynamic>)).toList() ??
            [],
  );
}

Map<String, dynamic> _$_$_ScheduleStateToJson(_$_ScheduleState instance) => <String, dynamic>{
      'loading': instance.loading,
      'first_loading': instance.firstLoading,
      'lesson_list': instance.lessonList.map((e) => e.toJson()).toList(),
    };
