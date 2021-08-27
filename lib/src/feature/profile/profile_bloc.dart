import 'package:domain/domain.dart';

class ProfileBloc {
  void refresh() {}

  // TODO mock
  void toggleLogged() {
    AppDomainProvider.appStore.dispatch(const UserLoggedInAction(loggedIn: true));
  }

  //AppDomainProvider.appStore.dispatch(fetchAnnouncementsThunk);

  void dispose() {}
}
