import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/lesson_model.dart';

part 'schedule_state.freezed.dart';
part 'schedule_state.g.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const ScheduleState._();

  const factory ScheduleState({
    @JsonKey(name: 'loading', defaultValue: false) @Default(false) bool loading,
    @JsonKey(name: 'first_loading', defaultValue: true) @Default(true) bool firstLoading,
    @JsonKey(name: 'lesson_list', defaultValue: <LessonModel>[]) @Default(<LessonModel>[]) List<LessonModel> lessonList,

    // TODO remove to subclass
    @JsonKey(name: 'have_schedule_upd', defaultValue: false) @Default(false) bool haveScheduleUpd,
    @JsonKey(name: 'have_last_notifications_upd', defaultValue: false) @Default(false) bool haveLastNotificationsUpd,
    @JsonKey(name: 'have_ratings_upd', defaultValue: false) @Default(false) bool haveRatingsUpd,
    @JsonKey(name: 'have_news_upd', defaultValue: false) @Default(false) bool haveNewsUpd,
    @JsonKey(name: 'have_homework_upd', defaultValue: false) @Default(false) bool haveHomeworkUpd,
  }) = _ScheduleState;

  factory ScheduleState.fromJson(Map<String, dynamic> json) => _$ScheduleStateFromJson(json);

  /// used in app schedule tab
  bool get hasAnyUpd {
    return haveScheduleUpd || haveLastNotificationsUpd || haveRatingsUpd || haveNewsUpd || haveHomeworkUpd;
  }
}
