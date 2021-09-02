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
    haveScheduleUpd: json['have_schedule_upd'] as bool? ?? false,
    haveLastNotificationsUpd: json['have_last_notifications_upd'] as bool? ?? false,
    haveRatingsUpd: json['have_ratings_upd'] as bool? ?? false,
    haveNewsUpd: json['have_news_upd'] as bool? ?? false,
    haveHomeworkUpd: json['have_homework_upd'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_ScheduleStateToJson(_$_ScheduleState instance) => <String, dynamic>{
      'loading': instance.loading,
      'first_loading': instance.firstLoading,
      'lesson_list': instance.lessonList.map((e) => e.toJson()).toList(),
      'have_schedule_upd': instance.haveScheduleUpd,
      'have_last_notifications_upd': instance.haveLastNotificationsUpd,
      'have_ratings_upd': instance.haveRatingsUpd,
      'have_news_upd': instance.haveNewsUpd,
      'have_homework_upd': instance.haveHomeworkUpd,
    };
