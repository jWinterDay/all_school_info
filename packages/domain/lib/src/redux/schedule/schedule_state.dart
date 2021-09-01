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
  }) = _ScheduleState;

  factory ScheduleState.fromJson(Map<String, dynamic> json) => _$ScheduleStateFromJson(json);
}
