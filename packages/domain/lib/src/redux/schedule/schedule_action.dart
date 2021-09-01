import 'package:domain/src/redux/schedule/models/lesson_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_action.freezed.dart';

@freezed
class ScheduleAction with _$ScheduleAction {
  const factory ScheduleAction.fetch({required DateTime value}) = _Fetch;

  const factory ScheduleAction.changeLoading({required bool value}) = _ChangeLoading;
  const factory ScheduleAction.changeFirstLoading({required bool value}) = _ChangeFirstLoading;

  const factory ScheduleAction.setLessonList({required List<LessonModel> value}) = _SetLessonList;
}
