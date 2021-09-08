import 'package:domain/domain.dart';
import 'package:redux/redux.dart';

class AnnouncementListBloc {
  AnnouncementListBloc() {
    _subscribe();
  }

  Store<AppState> get _store => getIt.get<AppDomain>().appStore;

  void refresh() {
    // print('refresh logged = ${_store.state.userState.loggedIn}');
    if (_store.state.userState.loggedIn) {
      print('refresh as logged');
      _store.dispatch(
        (Store<AppState> store) => fetchAnnouncementsThunk(
          store: store,
          collectionAddType: CollectionAddType.refresh,
        ),
      );
    }
  }

  void getMore() {
    if (!_store.state.announcementState.loading) {
      print('get more');
      _store.dispatch(
        (Store<AppState> store) => fetchAnnouncementsThunk(
          store: store,
          collectionAddType: CollectionAddType.down,
        ),
      );
    }
  }

  void dispose() {
    _store.dispatch(const AnnouncementAction.cleanUp());
    _store.dispatch((Store<AppState> store) => subscribeAnnouncementsThunk(store, subscribe: false));
  }

  void clearUnreadAnnouncements() {
    _store.dispatch(const AnnouncementAction.clearUnread());
  }

  void _subscribe() {
    // _store.dispatch((Store<AppState> store) => subscribeAnnouncementsThunk(store, subscribe: true));
  }
}
