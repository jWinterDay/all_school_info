import 'schedule_action.dart';
import 'schedule_state.dart';

ScheduleState scheduleReducer(ScheduleState s, dynamic a) {
  if (a is ScheduleAction) {
    return a.maybeMap<ScheduleState>(
      // ignore: always_specify_types
      changeLoading: (actionEvent) => s.copyWith(loading: actionEvent.value),
      orElse: () {
        return s;
      },
    );
  }

  return s;
}