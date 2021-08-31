import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_action.freezed.dart';

@freezed
class ScheduleAction with _$ScheduleAction {
  const factory ScheduleAction.fetch({required DateTime value}) = _Fetch;

  const factory ScheduleAction.changeLoading({required bool value}) = _ChangeLoading;
}
