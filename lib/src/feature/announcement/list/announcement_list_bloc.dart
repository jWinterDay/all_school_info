import 'dart:async';

import 'package:all_school_info/src/utils/app_utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domain/domain.dart';
import 'package:redux/redux.dart';

class AnnouncementListBloc {
  AnnouncementListBloc() {
    // Future<void>.delayed(Duration(seconds: 2), () {
    _subscribe();
    // });
  }

  final CollectionReference<Map<String, dynamic>> _announcements =
      FirebaseFirestore.instance.collection('announcements');

  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _announcementsSub;

  void refresh() {
    _firstFetch = true;
    getIt.get<AppDomain>().appStore.dispatch(const AnnouncementAction.changeLoading(value: true));

    // Future<void>.delayed(Duration(seconds: 2), () {
    _announcements.get().then((QuerySnapshot<Map<String, dynamic>> data) {
      getIt.get<AppDomain>().appStore.dispatch(const AnnouncementAction.cleanUp());
      _applyQuerySnapshot(data);
    });
  }

  void dispose() {
    _announcementsSub?.cancel();

    getIt.get<AppDomain>().appStore.dispatch(const AnnouncementAction.cleanUp());
  }

  void clearUnreadAnnouncements() {
    getIt.get<AppDomain>().appStore.dispatch(const AnnouncementAction.clearUnreadAnnouncements());
  }

  bool _firstFetch = true;

  void _subscribe() {
    // loading
    getIt.get<AppDomain>().appStore.dispatch(const AnnouncementAction.changeLoading(value: true));

    final Stream<QuerySnapshot<Map<String, dynamic>>> stream = _announcements.snapshots(includeMetadataChanges: true);
    _announcementsSub = stream.listen(_applyQuerySnapshot);
  }

  void _applyQuerySnapshot(QuerySnapshot<Map<String, dynamic>> snapshot) {
    final Iterable<AnnouncementApplyDto> list = snapshot.docChanges.map((DocumentChange<Map<String, dynamic>> e) {
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
  }
}
