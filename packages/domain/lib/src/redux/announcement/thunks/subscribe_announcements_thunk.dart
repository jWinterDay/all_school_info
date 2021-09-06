import 'dart:async';

import 'package:domain/src/redux/announcement/announcement_action.dart';
import 'package:domain/src/redux/announcement/models/announcement_model.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:redux/redux.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference<Map<String, dynamic>> _fbCollection = FirebaseFirestore.instance.collection('announcements');
StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _announcementsSub;
Query<Map<String, dynamic>>? _announcements;
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

  // loading
  store.dispatch(const AnnouncementAction.changeFirstLoading(value: false));
  // ..dispatch(const AnnouncementAction.changeLoading(value: true));

  _announcements = _fbCollection.where(
    'user_groups',
    arrayContainsAny: <String>['class_7'], // store.state.userState.accessGroups,
  );

  final Stream<QuerySnapshot<Map<String, dynamic>>>? stream = _announcements?.snapshots(includeMetadataChanges: true);

  await _announcementsSub?.cancel();
  _announcementsSub = stream?.listen((QuerySnapshot<Map<String, dynamic>> snapshot) {
    _applyQuerySnapshot(snapshot: snapshot, store: store);
  });
}

void _applyQuerySnapshot({
  required QuerySnapshot<Map<String, dynamic>> snapshot,
  required Store<AppState> store,
}) {
  // clean if no docs
  if (snapshot.docChanges.isEmpty) {
    store.dispatch(const AnnouncementAction.cleanUp());
    return;
  }

  // iterate throw changed docs
  for (final DocumentChange<Map<String, dynamic>> item in snapshot.docChanges) {
    switch (item.type) {
      case DocumentChangeType.modified:
        break;

      case DocumentChangeType.added:
        _processAdded(store: store, item: item, firstFetch: true); // TODO firstFetch);
        break;

      case DocumentChangeType.removed:
        _processRemoved(store: store, item: item);
        break;

      default:
      // do nothing
    }
  }
}

void _processAdded({
  required DocumentChange<Map<String, dynamic>> item,
  required bool firstFetch,
  required Store<AppState> store,
}) {
  final Map<String, dynamic>? data = item.doc.data();

  bool isTopEvent = false;
  final dynamic rawIsTopEvent = data?['is_top_event'];
  if (rawIsTopEvent is bool) {
    isTopEvent = rawIsTopEvent;
  }

  int? dateUnixMsRaw;
  try {
    final dynamic rawDateUnixMs = data?['date_unix_ms'];

    if (rawDateUnixMs != null) {
      if (rawDateUnixMs is Timestamp) {
        dateUnixMsRaw = rawDateUnixMs.millisecondsSinceEpoch;
      }
    }
  } catch (exc) {
    rethrow;
  }

  print('domain dateUnixMsRaw = $dateUnixMsRaw');

  final AnnouncementModel model = AnnouncementModel(
    item.doc.id,
    title: data?['title']?.toString(),
    content: data?['content']?.toString(),
    isTopEvent: isTopEvent,
    dateUnixMs: dateUnixMsRaw,
  );

  if (firstFetch) {
    store.dispatch(AnnouncementAction.addAnnouncement(value: model));
  } else {
    store.dispatch(AnnouncementAction.addUnreadAnnouncement(value: model));
  }
}

void _processRemoved({
  required DocumentChange<Map<String, dynamic>> item,
  required Store<AppState> store,
}) {
  store.dispatch(
    AnnouncementAction.removeAnnouncementById(value: item.doc.id),
  );
}
