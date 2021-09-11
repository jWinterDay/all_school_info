import 'dart:async';

import 'package:domain/domain.dart';
import 'package:redux/redux.dart';

class AuthBloc {
  AuthBloc() {
    _subscribe();
  }

  Store<AppState> get _store => getIt.get<AppDomain>().appStore;

  Stream<bool> get loggedInStream => _store.onChange.map((AppState appState) => appState.userState.loggedIn).distinct();

  // final StreamController<Exception?> _exceptionController = StreamController<Exception?>();
  Stream<Exception?> get exceptionStream {
    return _store.onChange.map((AppState appState) => appState.userState.authException).distinct();
  }

  void signin({required String email, required String password}) {
    _store.dispatch(const UserAction.authException(null));

    _store.dispatch(
      (Store<AppState> store) => signInUserWithEmailThunk(
        store,
        email: email,
        password: password,
      ),
    );
  }

  void signout() {
    // if (!_store.state.announcementState.loading) {
    //   _store.dispatch(
    //     (Store<AppState> store) => fetchAnnouncementsThunk(
    //       store: store,
    //       collectionAddType: CollectionAddType.down,
    //     ),
    //   );
    // }
  }

  void dispose() {
    // _exceptionController.close();
    // _store.dispatch(const AnnouncementAction.cleanUp());
    // _store.dispatch((Store<AppState> store) => subscribeAnnouncementsThunk(store, subscribe: false));
  }

  void _subscribe() {
    // _store.dispatch((Store<AppState> store) => subscribeAnnouncementsThunk(store, subscribe: true));
  }
}
