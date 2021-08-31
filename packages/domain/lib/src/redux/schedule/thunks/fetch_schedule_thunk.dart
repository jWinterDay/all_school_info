import 'package:domain/src/init_domain_di.dart';
import 'package:domain/src/models/error_model.dart';
import 'package:domain/src/redux/announcement/announcement_action.dart';
import 'package:domain/src/redux/announcement/models/announcement_model.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/redux/schedule/schedule_action.dart';
import 'package:domain/src/services/announcement/announcement_service.dart';
import 'package:redux/redux.dart';

void fetchScheduleThunk(Store<AppState> store) async {
  store.dispatch(const ScheduleAction.changeLoading(value: true));

  await Future<void>.delayed(Duration(seconds: 2));

  store.dispatch(const ScheduleAction.changeLoading(value: false));
  // ..dispatch(const AnnouncementAction.clearErrorModel());

  // final AnnouncementService announcementService = getIt.get<AnnouncementService>();

  // try {
  //   final List<AnnouncementModel> list = await announcementService.fetchAnnouncements();
  //   store.dispatch(AnnouncementAction.addAnnouncementList(list: list));
  // } catch (exc) {
  //   store.dispatch(
  //     AnnouncementAction.setErrorModel(
  //       value: ErrorModel(44, exc.toString()),
  //     ),
  //   );
  // } finally {
  //   store.dispatch(const AnnouncementAction.changeLoading(value: false));
  // }
}
