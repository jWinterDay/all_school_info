import 'package:domain/domain.dart';
import 'package:redux/redux.dart';

class AnnouncementListBloc {
  AnnouncementListBloc() {
    _subscribe();
  }

  Store<AppState> get _store => getIt.get<AppDomain>().appStore;

  void refresh() {
    // _firstFetch = true;

    // if (_store.state.userState.accessGroups.isNotEmpty) {
    //   _store.dispatch(const AnnouncementAction.changeLoading(value: true));

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
    // }
  }

  void dispose() {
    _store.dispatch(const AnnouncementAction.cleanUp());
    _store.dispatch((Store<AppState> store) => subscribeAnnouncementsThunk(store, subscribe: false));
  }

  void clearUnreadAnnouncements() {
    _store.dispatch(const AnnouncementAction.clearUnreadAnnouncements());
  }

  void _subscribe() {
    _store.dispatch((Store<AppState> store) => subscribeAnnouncementsThunk(store, subscribe: true));
  }
}
