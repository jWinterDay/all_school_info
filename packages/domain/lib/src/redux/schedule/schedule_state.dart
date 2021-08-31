import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_state.freezed.dart';
part 'schedule_state.g.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const ScheduleState._();

  const factory ScheduleState({
    @JsonKey(name: 'loading', defaultValue: false) @Default(false) bool loading,
  }) = _ScheduleState;

  factory ScheduleState.fromJson(Map<String, dynamic> json) => _$ScheduleStateFromJson(json);
}
