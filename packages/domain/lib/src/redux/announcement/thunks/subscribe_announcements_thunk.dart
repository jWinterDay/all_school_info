import 'dart:async';

import 'package:domain/domain.dart';
import 'package:domain/src/models/error_model.dart';
import 'package:domain/src/redux/announcement/announcement_action.dart';
import 'package:domain/src/redux/announcement/models/announcement_model.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/services/announcement/announcement_service.dart';
import 'package:redux/redux.dart';
import 'package:utils/logger.dart';

StreamSubscription<List<AnnouncementModel>>? _announcementsSub;
StreamSubscription<List<String>>? _userStateSub;

void subscribeAnnouncementsThunk(
  Store<AppState> store, {
  required bool subscribe, // subscribe or unsubscribe
}) async {
  if (!subscribe) {
    await _announcementsSub?.cancel();
    await _userStateSub?.cancel();
    store.dispatch(const AnnouncementAction.cleanUp());

    return;
  }

  final AnnouncementService userService = getIt.get<AnnouncementService>();

  _userStateSub = store.onChange
      .map((AppState appState) => appState.userState.accessGroups)
      .where((List<String> accessGroups) => accessGroups.isNotEmpty)
      .distinct()
      .handleError((Object exc) {
    logger.e('exc: $exc');

    store.dispatch(AnnouncementAction.setErrorModel(value: ErrorModel(1, exc.toString())));
  }).listen((List<String> accessGroups) {
    _announcementsSub?.cancel();

    final Stream<List<AnnouncementModel>> stream = userService.announcementsStream(accessGroups: accessGroups);
    _announcementsSub = stream.listen((List<AnnouncementModel> list) {
      store.dispatch(AnnouncementAction.addAnnouncementList(value: list));
    });
  });
}

// void _subscribe(Store<AppState> store, List<String> accessGroups) {
//   final AnnouncementService userService = getIt.get<AnnouncementService>();

//   _announcementsSub?.cancel();
//   _announcementsSub =
//       userService.announcementsStream(accessGroups: accessGroups).listen((List<AnnouncementModel> list) {
//     _applyQuerySnapshot(list: list, store: store);
//   });
// }

// void _applyQuerySnapshot({
//   required List<AnnouncementModel> list,
//   required Store<AppState> store,
// }) {
//   print('list = ${list.length}');

//   // clean if no docs
//   if (list.isEmpty) {
//     store.dispatch(const AnnouncementAction.cleanUp());
//     return;
//   }

//   // added
//   final List<AnnouncementModel> addedList = list.where((AnnouncementModel item) {
//     return item.documentChangeType == DocumentChangeType.added;
//   }).toList();
//   _processAdded(
//     store: store,
//     list: addedList,
//     firstFetch: store.state.announcementState.firstLoading,
//   );

//   // removed
//   final List<AnnouncementModel> removedList = list.where((AnnouncementModel item) {
//     return item.documentChangeType == DocumentChangeType.removed;
//   }).toList();
//   _processRemoved(
//     store: store,
//     list: removedList,
//   );

//   // modified
//   final List<AnnouncementModel> modifiedList = list.where((AnnouncementModel item) {
//     return item.documentChangeType == DocumentChangeType.modified;
//   }).toList();
//   _processModified(
//     store: store,
//     list: modifiedList,
//   );
// }

// void _processAdded({
//   required List<AnnouncementModel> list,
//   required bool firstFetch,
//   required Store<AppState> store,
// }) {
//   if (list.isEmpty) {
//     return;
//   }

//   if (store.state.announcementState.firstLoading) {
//     store
//       ..dispatch(AnnouncementAction.addAnnouncementList(value: list))
//       ..dispatch(const AnnouncementAction.changeFirstLoading(value: false)); // for ui
//   } else {
//     // top
//     final bool containsTop = list.any((AnnouncementModel e) => e.isTopEvent);
//     if (containsTop) {
//       store.dispatch(AnnouncementAction.addAnnouncementList(value: list));
//     }

//     // not top
//     final List<AnnouncementModel> notTopList = list.where((AnnouncementModel e) => !e.isTopEvent).toList();
//     if (notTopList.isNotEmpty) {
//       store.dispatch(AnnouncementAction.addUnreadAnnouncementList(value: notTopList));
//     }
//   }
// }

// void _processRemoved({
//   required List<AnnouncementModel> list,
//   required Store<AppState> store,
// }) {
//   if (list.isNotEmpty) {
//     print('_processRemoved list = $list');
//   }
// }

// void _processModified({
//   required List<AnnouncementModel> list,
//   required Store<AppState> store,
// }) {
//   if (list.isNotEmpty) {
//     print('_processModified list = $list');
//   }
// }
