import 'package:domain/domain.dart';
import 'package:redux/redux.dart';

class AnnouncementListBloc {
  AnnouncementListBloc() {
    _subscribe();
  }

  Store<AppState> get _store => getIt.get<AppDomain>().appStore;

  void refresh() {
    _store.dispatch(fetchAnnouncementsThunk);
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
