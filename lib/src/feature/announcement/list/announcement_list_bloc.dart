import 'dart:async';

import 'package:all_school_info/src/utils/app_utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domain/domain.dart';
import 'package:redux/redux.dart';

class AnnouncementListBloc {
  AnnouncementListBloc() {
    _subscribe();
  }

  Store<AppState> get _store => getIt.get<AppDomain>().appStore;

  Query<Map<String, dynamic>>? _announcements;
  CollectionReference<Map<String, dynamic>> _fbCollection = FirebaseFirestore.instance.collection('announcements');

  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _announcementsSub;
  StreamSubscription<List<String>>? _userStateSub;

  /// init fb subscription
  // void _init() {}

  void refresh() {
    _firstFetch = true;

    if (_store.state.userState.accessGroups.isNotEmpty) {
      _store.dispatch(const AnnouncementAction.changeLoading(value: true));

      // _announcements
      //     ?.where(
      //       'user_groups',
      //       arrayContainsAny: _store.state.userState.accessGroups,
      //     )
      //     .get()
      //     .then((QuerySnapshot<Map<String, dynamic>> data) {
      //   _store.dispatch(const AnnouncementAction.cleanUp());
      //   _applyQuerySnapshot(data);
      // });
    }
  }

  void dispose() {
    _announcementsSub?.cancel();
    _userStateSub?.cancel();

    _store.dispatch(const AnnouncementAction.cleanUp());
  }

  void clearUnreadAnnouncements() {
    _store.dispatch(const AnnouncementAction.clearUnreadAnnouncements());
  }

  bool _firstFetch = true;

  void _subscribe() {
    // loading
    _store.dispatch(const AnnouncementAction.changeLoading(value: true)); // TODO

    // listen for user metadata
    _userStateSub = _store.onChange
        .map((AppState appState) {
          return appState.userState.accessGroups;
        })
        .where((List<String> accessGroups) => accessGroups.isNotEmpty)
        .distinct()
        // .distinct()
        .listen((List<String> accessGroups) {
          // final List<String> accessGroups = userState.accessGroups;

          print('listen accessGroups = $accessGroups');

          _firstFetch = true;

          // fb listening
          _announcements = _fbCollection.where(
            'user_groups',
            arrayContainsAny: accessGroups,
          );

          final Stream<QuerySnapshot<Map<String, dynamic>>>? stream =
              _announcements?.snapshots(includeMetadataChanges: true);

          _announcementsSub?.cancel();
          _announcementsSub = stream?.listen(_applyQuerySnapshot);
        });

    // final List<String> accessGroups = _store.state.userState.accessGroups;

    // // fb
    // _announcementsSub?.cancel();
    // _announcements = _fbCollection.where(
    //   'user_groups',
    //   arrayContainsAny: accessGroups,
    // );

    // final Stream<QuerySnapshot<Map<String, dynamic>>>? stream = _announcements?.snapshots(includeMetadataChanges: true);
    // _announcementsSub = stream?.listen(_applyQuerySnapshot);
  }

  void _applyQuerySnapshot(QuerySnapshot<Map<String, dynamic>> snapshot) {
    if (snapshot.docChanges.isEmpty) {
      _store.dispatch((Store<AppState> store) {
        applyAnnouncementsThunk(
          store,
          applyDtoList: <AnnouncementApplyDto>[],
          firstFetch: _firstFetch,
        );
      });

      return;
    }

    final Iterable<AnnouncementApplyDto> list = snapshot.docChanges.map((DocumentChange<Map<String, dynamic>> e) {
      return AnnouncementApplyDto(
        docApplyType: AppUtils.convertDocTypeToDtoType(e.type),
        id: e.doc.id,
        data: e.doc.data(),
      );
    });

    _store.dispatch((Store<AppState> store) {
      applyAnnouncementsThunk(
        store,
        applyDtoList: list,
        firstFetch: _firstFetch,
      );
    });

    _firstFetch = false;
  }
}
