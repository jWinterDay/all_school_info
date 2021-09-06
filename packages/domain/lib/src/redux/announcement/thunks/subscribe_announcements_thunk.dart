import 'dart:async';

import 'package:domain/domain.dart';
import 'package:domain/src/redux/announcement/announcement_action.dart';
import 'package:domain/src/redux/announcement/models/announcement_model.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/services/announcement/announcement_service.dart';
import 'package:redux/redux.dart';

import 'package:cloud_firestore/cloud_firestore.dart' show DocumentChangeType;

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
      .map((AppState appState) {
        return appState.userState.accessGroups;
      })
      .where((List<String> accessGroups) => accessGroups.isNotEmpty)
      .distinct()
      .listen((List<String> accessGroups) {
        _announcementsSub?.cancel();
        _announcementsSub =
            userService.announcementsStream(accessGroups: accessGroups).listen((List<AnnouncementModel> list) {
          _applyQuerySnapshot(list: list, store: store);
        });
      });
}

void _applyQuerySnapshot({
  required List<AnnouncementModel> list,
  required Store<AppState> store,
}) {
  // clean if no docs
  if (list.isEmpty) {
    store.dispatch(const AnnouncementAction.cleanUp());
    return;
  }

  // added
  final List<AnnouncementModel> added = list.where((AnnouncementModel model) {
    return model.documentChangeType == DocumentChangeType.added;
  }).toList();

  if (store.state.announcementState.firstLoading) {
    store
      ..dispatch(AnnouncementAction.addAnnouncementList(value: added))
      ..dispatch(const AnnouncementAction.changeFirstLoading(value: false)); // for ui
  } else {
    store.dispatch(AnnouncementAction.addUnreadAnnouncementList(value: added));
  }

  // store.dispatch(AnnouncementAction.addUnreadAnnouncementList(value: added));
  // store.dispatch(AnnouncementAction.addAnnouncementList(value: added));

  // iterate throw changed docs
  // for (final AnnouncementModel model in list) {
  //   switch (item.type) {
  //     case DocumentChangeType.modified:
  //       break;

  //     case DocumentChangeType.added:
  //       _processAdded(store: store, item: item, firstFetch: true); // store.state.announcementState.firstLoading);
  //       break;

  //     case DocumentChangeType.removed:
  //       _processRemoved(store: store, item: item);
  //       break;

  //     default:
  //     // do nothing
  //   }
  // }
}

// void _processAdded({
//   required DocumentChange<Map<String, dynamic>> item,
//   required bool firstFetch,
//   required Store<AppState> store,
// }) {
//   final Map<String, dynamic>? data = item.doc.data();

//   bool isTopEvent = false;
//   final dynamic rawIsTopEvent = data?['is_top_event'];
//   if (rawIsTopEvent is bool) {
//     isTopEvent = rawIsTopEvent;
//   }

//   int? dateUnixMsRaw;
//   try {
//     final dynamic rawDateUnixMs = data?['date_unix_ms'];

//     if (rawDateUnixMs != null) {
//       if (rawDateUnixMs is Timestamp) {
//         dateUnixMsRaw = rawDateUnixMs.millisecondsSinceEpoch;
//       }
//     }
//   } catch (exc) {
//     rethrow;
//   }

//   final AnnouncementModel model = AnnouncementModel(
//     item.doc.id,
//     title: data?['title']?.toString(),
//     content: data?['content']?.toString(),
//     isTopEvent: isTopEvent,
//     dateUnixMs: dateUnixMsRaw,
//   );

//   if (firstFetch) {
//     store.dispatch(AnnouncementAction.addAnnouncement(value: model));
//   } else {
//     store.dispatch(AnnouncementAction.addUnreadAnnouncement(value: model));
//   }
// }

// void _processRemoved({
//   required DocumentChange<Map<String, dynamic>> item,
//   required Store<AppState> store,
// }) {
//   store.dispatch(
//     AnnouncementAction.removeAnnouncementById(value: item.doc.id),
//   );
// }
