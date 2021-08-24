import 'package:domain/src/redux/announcement/announcement_action.dart';
import 'package:domain/src/redux/announcement/models/announcement_model.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/services/announcement/announcement_service_impl.dart';
import 'package:redux/redux.dart';

void fetchAnnouncementsThunk(Store<AppState> store) async {
  store.dispatch(const AnnouncementAction.changeLoading(value: true));

  final List<AnnouncementModel> list = await AnnouncementServiceImpl().fetchAnnouncements();

  store
    ..dispatch(const AnnouncementAction.changeLoading(value: false))
    ..dispatch(AnnouncementAction.addAnnouncementList(list: list));
}
