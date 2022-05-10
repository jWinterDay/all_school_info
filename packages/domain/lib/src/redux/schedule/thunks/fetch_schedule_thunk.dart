import 'package:domain/src/init_domain_di.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/redux/schedule/models/lesson_model.dart';
import 'package:domain/src/redux/schedule/schedule_action.dart';
import 'package:domain/src/services/schedule/schedule_service.dart';
import 'package:redux/redux.dart';

Future<void> fetchScheduleThunk(Store<AppState> store) async {
  store.dispatch(const ScheduleAction.changeLoading(value: true));

  final ScheduleService scheduleService = getIt.get<ScheduleService>();

  try {
    final List<LessonModel> list = await scheduleService.fetchLessons(DateTime.now());

    store.dispatch(ScheduleAction.setLessonList(value: list));
  } catch (exc) {
    // store.dispatch(
    //   AnnouncementAction.setErrorModel(
    //     value: ErrorModel(44, exc.toString()),
    //   ),
    // );
  } finally {
    store.dispatch(const ScheduleAction.changeLoading(value: false));

    if (store.state.scheduleState.firstLoading) {
      store.dispatch(const ScheduleAction.changeFirstLoading(value: false));
    }
  }
}
