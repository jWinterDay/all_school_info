import 'package:domain/domain.dart';
import 'package:redux/redux.dart';

class ProfileBloc {
  Store<AppState> get _appStore => getIt.get<AppDomain>().appStore;

  void refresh() {
    _appStore.dispatch(fetchUserThunk);
  }

  void createNewUser(String email, String password) {
    _appStore.dispatch(
      (Store<AppState> store) => createUserWithEmailThunk(
        store,
        email: email,
        password: password,
      ),
    );
  }

  void signIn(String email, String password) {
    _appStore.dispatch(
      (Store<AppState> store) => signInUserWithEmailThunk(
        store,
        email: email,
        password: password,
      ),
    );
  }

  void signOut() {
    _appStore.dispatch(signOutUserThunk);
  }

  void dispose() {}
}
