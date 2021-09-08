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
    required this.limit,
  });

  final List<String> accessGroups;
  final bool loggedIn;
  final int limit;

  bool get needUnsubscribe => accessGroups.isEmpty || !loggedIn;
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
  Rx.combineLatest3<List<String>, bool, int, _UserChange>(
    store.onChange.map((AppState a) => a.userState.accessGroups).distinct(),
    store.onChange.map((AppState a) => a.userState.loggedIn).distinct(),
    store.onChange.map((AppState a) => a.announcementState.limit).distinct(),
    (List<String> list, bool loggedId, int limit) {
      return _UserChange(
        accessGroups: list,
        loggedIn: loggedId,
        limit: limit,
      );
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
    if (change.needUnsubscribe) {
      _unsubscribe(store);
      return;
    }

    _subscribe(
      store: store,
      accessGroups: change.accessGroups,
      limit: change.limit,
    );
  }).listen((_) {});
}

Future<void> _subscribe({
  required Store<AppState> store,
  required List<String> accessGroups,
  required int limit,
}) async {
  final AnnouncementService announcementService = getIt.get<AnnouncementService>();

  await _announcementsSub?.cancel();
  final Stream<List<AnnouncementModel>> stream = announcementService.announcementsStream(
    accessGroups: accessGroups,
    limit: limit,
  );
  _announcementsSub = stream.listen((List<AnnouncementModel> list) {
    store.dispatch(AnnouncementAction.addAnnouncementList(value: list, toTop: true));

    if (list.isNotEmpty) {
      final int? lastDateTime = list.last.dateUnixMs;
      print('--------subscribe lastDateTime = ${DateTime.fromMillisecondsSinceEpoch(lastDateTime!)}');
      store.dispatch(AnnouncementAction.changeDateUnixMsThreshold(value: lastDateTime));
    }
  });
}

Future<void> _unsubscribe(Store<AppState> store) async {
  await _announcementsSub?.cancel();
  await _userStateSub?.cancel();
  store.dispatch(const AnnouncementAction.cleanUp());
}
