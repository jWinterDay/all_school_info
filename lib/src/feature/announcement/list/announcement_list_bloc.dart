import 'dart:async';

import 'package:all_school_info/src/utils/app_utils.dart';
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
    // getIt.get<AppDomain>().appStore.dispatch(fetchAnnouncementsThunk);
  }

  void dispose() {
    _announcementsSub?.cancel();

    getIt.get<AppDomain>().appStore.dispatch(const AnnouncementAction.cleanUp());
  }

  void testAddUnread() {
    const AnnouncementModel model = AnnouncementModel(
      'fdsfs',
      title: 'title 1',
      content: 'content 1',
      isTopEvent: false,
    );

    getIt.get<AppDomain>().appStore.dispatch(const AnnouncementAction.addUnreadAnnouncement(value: model));
  }

  bool _lastVal = false;
  void testAddScheduleUpd() {
    getIt.get<AppDomain>().appStore.dispatch(ScheduleAction.changeHaveScheduleUpd(value: _lastVal));
    getIt.get<AppDomain>().appStore.dispatch(ScheduleAction.changeHaveLastNotificationsUpd(value: _lastVal));
    getIt.get<AppDomain>().appStore.dispatch(ScheduleAction.changehaveRatingsUpd(value: _lastVal));
    getIt.get<AppDomain>().appStore.dispatch(ScheduleAction.changehaveNewsUpd(value: _lastVal));
    getIt.get<AppDomain>().appStore.dispatch(ScheduleAction.changehaveHomeworkUpd(value: _lastVal));

    _lastVal = !_lastVal;
  }

  void clearUnreadAnnouncements() {
    getIt.get<AppDomain>().appStore.dispatch(const AnnouncementAction.clearUnreadAnnouncements());
  }

  bool _firstFetch = true;

  void _subscribe() {
    final Stream<QuerySnapshot<Map<String, dynamic>>> stream = _announcements.snapshots(includeMetadataChanges: true);

    _announcementsSub = stream.listen((QuerySnapshot<Map<String, dynamic>> event) {
      final Iterable<AnnouncementApplyDto> list = event.docChanges.map((DocumentChange<Map<String, dynamic>> e) {
        return AnnouncementApplyDto(
          docApplyType: AppUtils.convertDocTypeToDtoType(e.type),
          id: e.doc.id,
          data: e.doc.data(),
        );
      });

      getIt.get<AppDomain>().appStore.dispatch((Store<AppState> store) {
        applyAnnouncementsThunk(
          store,
          applyDtoList: list,
          firstFetch: _firstFetch,
        );
      });

      _firstFetch = false;
    });
  }
}
