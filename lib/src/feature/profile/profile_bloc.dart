import 'package:domain/domain.dart';

class ProfileBloc {
  void refresh() {
    AppDomainProvider.appStore.dispatch(fetchUserThunk);
  }

  // TODO mock
  void toggleLogged() {
    AppDomainProvider.appStore.dispatch(const UserLoggedInAction(loggedIn: true));
  }

  //AppDomainProvider.appStore.dispatch(fetchAnnouncementsThunk);

  void dispose() {}
}
