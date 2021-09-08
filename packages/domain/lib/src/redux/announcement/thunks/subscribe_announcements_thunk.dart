import 'dart:async';

import 'package:domain/domain.dart';
import 'package:domain/src/models/error_model.dart';
import 'package:domain/src/redux/announcement/announcement_action.dart';
import 'package:domain/src/redux/announcement/models/announcement_model.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/services/announcement/announcement_service.dart';
import 'package:redux/redux.dart';
import 'package:utils/logger.dart';
import 'package:rxdart/rxdart.dart';

StreamSubscription<List<AnnouncementModel>>? _announcementsSub;
StreamSubscription<_UserChange>? _userStateSub;

class _UserChange {
  _UserChange({
    required this.accessGroups,
    required this.loggedIn,
  });

  final List<String> accessGroups;
  final bool loggedIn;
}

void subscribeAnnouncementsThunk(
  Store<AppState> store, {
  required bool subscribe, // subscribe or unsubscribe
}) async {
  if (!subscribe) {
    await _unsubscribe(store);
    return;
  }

  // subscribe to state changing
  Rx.combineLatest2<List<String>, bool, _UserChange>(
    store.onChange.map((AppState a) => a.userState.accessGroups).distinct(),
    store.onChange.map((AppState a) => a.userState.loggedIn).distinct(),
    (List<String> list, bool loggedId) {
      return _UserChange(accessGroups: list, loggedIn: loggedId);
    },
  ).handleError((Object exc) {
    logger.e('exc: $exc');

    store.dispatch(
      AnnouncementAction.setErrorModel(
        value: ErrorModel(
          1,
          exc.toString(),
        ),
      ),
    );
  }).asyncMap((_UserChange change) {
    if (change.accessGroups.isEmpty || !change.loggedIn) {
      _unsubscribe(store);
      return;
    }

    _subscribe(store, change.accessGroups);
  }).listen((_) {});
}

Future<void> _subscribe(Store<AppState> store, List<String> accessGroups) async {
  final AnnouncementService announcementService = getIt.get<AnnouncementService>();

  await _announcementsSub?.cancel();
  final Stream<List<AnnouncementModel>> stream = announcementService.announcementsStream(
    accessGroups: accessGroups,
  );
  _announcementsSub = stream.listen((List<AnnouncementModel> list) {
    store.dispatch(AnnouncementAction.addAnnouncementList(value: list));
  });
}

Future<void> _unsubscribe(Store<AppState> store) async {
  await _announcementsSub?.cancel();
  await _userStateSub?.cancel();
  store.dispatch(const AnnouncementAction.cleanUp());
}
