import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domain/domain.dart';
import 'package:redux/redux.dart';

class AnnouncementListBloc {
  AnnouncementListBloc() {
    _subscribe();
  }

  final CollectionReference<Map<String, dynamic>> _announcements =
      FirebaseFirestore.instance.collection('announcements');

  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _announcementsSub;

  // final DocumentSnapshot<Object?> user = await users.doc('eQLkS65WZ1NQTQ2Skc8r').get();

  // print('user = ${user.data()}');

  // FirebaseFirestore.instance.collection('user').snapshots().listen((QuerySnapshot<Map<String, dynamic>> event) {
  //   print(event.docs);
  //   print(event.docs.map((e) => e.data()));
  // });

  void refresh() {
    getIt.get<AppDomain>().appStore.dispatch(fetchAnnouncementsThunk);
  }

  void dispose() {
    _announcementsSub?.cancel();

    getIt.get<AppDomain>().appStore.dispatch(const AnnouncementAction.cleanUp());
  }

  void addUnread() {
    const AnnouncementModel model = AnnouncementModel(
      'fdsfs',
      title: 'title 1',
      content: 'content 1',
      isTopEvent: true,
    );

    getIt.get<AppDomain>().appStore.dispatch(const AnnouncementAction.addUnreadAnnouncement(value: model));
  }

  void clearUnreadAnnouncements() {
    getIt.get<AppDomain>().appStore.dispatch(const AnnouncementAction.clearUnreadAnnouncements());
  }

  void _subscribe() {
    _announcementsSub =
        _announcements.snapshots(includeMetadataChanges: true).listen((QuerySnapshot<Map<String, dynamic>> event) {
      final Iterable<Map<String, dynamic>> data = event.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> e) {
        return e.data();
      });

      getIt.get<AppDomain>().appStore.dispatch((Store<AppState> store) {
        applyAnnouncementsThunk(store, data: data);
      });
    });
  }
}
