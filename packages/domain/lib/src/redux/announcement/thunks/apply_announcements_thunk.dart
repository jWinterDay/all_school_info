import 'package:domain/src/init_domain_di.dart';
import 'package:domain/src/models/error_model.dart';
import 'package:domain/src/redux/announcement/announcement_action.dart';
import 'package:domain/src/redux/announcement/models/announcement_model.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/services/announcement/announcement_service.dart';
import 'package:redux/redux.dart';

void applyAnnouncementsThunk(Store<AppState> store, {required Iterable<Map<String, dynamic>> data}) async {
  store
    ..dispatch(const AnnouncementAction.changeLoading(value: true))
    ..dispatch(const AnnouncementAction.clearErrorModel());

  print('domain received $data');

  // final AnnouncementService announcementService = getIt.get<AnnouncementService>();

  try {
    // final List<AnnouncementModel> list = await announcementService.fetchAnnouncements();
    // store.dispatch(AnnouncementAction.addAnnouncementList(value: list));
  } catch (exc) {
    // store.dispatch(
    //   AnnouncementAction.setErrorModel(
    //     value: ErrorModel(44, exc.toString()),
    //   ),
    // );
  } finally {
    store.dispatch(const AnnouncementAction.changeLoading(value: false));

    if (store.state.announcementState.firstLoading) {
      store.dispatch(const AnnouncementAction.changeFirstLoading(value: false));
    }
  }
}
