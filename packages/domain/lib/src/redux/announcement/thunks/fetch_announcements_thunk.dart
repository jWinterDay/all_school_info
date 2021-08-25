import 'package:domain/src/init_domain.dart';
import 'package:domain/src/redux/announcement/announcement_action.dart';
import 'package:domain/src/redux/announcement/models/announcement_model.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/services/announcement/announcement_service.dart';
import 'package:redux/redux.dart';

void fetchAnnouncementsThunk(Store<AppState> store) async {
  store.dispatch(const AnnouncementAction.changeLoading(value: true));

  final AnnouncementService announcementService = getIt.get<AnnouncementService>();
  final List<AnnouncementModel> list = await announcementService.fetchAnnouncements();

  store
    ..dispatch(const AnnouncementAction.changeLoading(value: false))
    ..dispatch(AnnouncementAction.addAnnouncementList(list: list));
}
