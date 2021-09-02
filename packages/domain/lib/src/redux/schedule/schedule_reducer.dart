import 'schedule_action.dart';
import 'schedule_state.dart';

ScheduleState scheduleReducer(ScheduleState s, dynamic a) {
  if (a is ScheduleAction) {
    return a.maybeMap<ScheduleState>(
      // ignore: always_specify_types
      changeLoading: (actionEvent) => s.copyWith(loading: actionEvent.value),
      // ignore: always_specify_types
      changeFirstLoading: (actionEvent) => s.copyWith(firstLoading: actionEvent.value),
      // ignore: always_specify_types
      setLessonList: (actionEvent) => s.copyWith(lessonList: actionEvent.value),

      // change have updates
      // ignore: always_specify_types
      changeHaveScheduleUpd: (actionEvent) => s.copyWith(haveScheduleUpd: actionEvent.value),
      // ignore: always_specify_types
      changeHaveLastNotificationsUpd: (actionEvent) => s.copyWith(haveLastNotificationsUpd: actionEvent.value),
      // ignore: always_specify_types
      changehaveRatingsUpd: (actionEvent) => s.copyWith(haveRatingsUpd: actionEvent.value),
      // ignore: always_specify_types
      changehaveNewsUpd: (actionEvent) => s.copyWith(haveNewsUpd: actionEvent.value),
      // ignore: always_specify_types
      changehaveHomeworkUpd: (actionEvent) => s.copyWith(haveHomeworkUpd: actionEvent.value),

      //
      orElse: () {
        return s;
      },
    );
  }

  return s;
}
