// import 'dart:developer';

import 'package:domain/src/init_domain_di.dart';
import 'package:domain/src/models/error_model.dart';
import 'package:domain/src/redux/announcement/announcement_action.dart';
import 'package:domain/src/redux/announcement/models/announcement_model.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/services/announcement/announcement_service.dart';
import 'package:redux/redux.dart';
import 'package:utils/logger.dart';

void fetchAnnouncementsThunk(Store<AppState> store) async {
  store
    ..dispatch(const AnnouncementAction.changeLoading(value: true))
    ..dispatch(const AnnouncementAction.clearErrorModel());

  final AnnouncementService announcementService = getIt.get<AnnouncementService>();

  final List<String> accessGroups = store.state.userState.accessGroups;

  try {
    final List<AnnouncementModel> list = await announcementService.fetchAnnouncements(accessGroups: accessGroups);
    store.dispatch(AnnouncementAction.addAnnouncementList(value: list));
  } catch (exc, stackTrace) {
    // log(exc.toString());
    logger.e('exc: $exc', exc.runtimeType, stackTrace);

    store.dispatch(
      AnnouncementAction.setErrorModel(
        value: ErrorModel(44, exc.toString()),
      ),
    );
  } finally {
    store.dispatch(const AnnouncementAction.changeLoading(value: false));

    if (store.state.announcementState.firstLoading) {
      store.dispatch(const AnnouncementAction.changeFirstLoading(value: false));
    }
  }
}
