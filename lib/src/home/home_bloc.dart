import 'package:domain/domain.dart';

class HomeBloc {
  void init() {
    final AppDomain appDomain = getIt.get<AppDomain>();

    // mock
    appDomain.appStore
      ..dispatch(const UserAction.changeLoggedIn(value: true))
      ..dispatch(const UserAction.changeAccessGroups(
        value: <String>[
          'canCreateAnnouncements',
          'class_7',
        ],
      ))
      ..dispatch(const UserAction.updateInfo(
        firstName: 'Vasya',
        lastName: 'Vasilich',
        email: 'v@m.com',
        phoneNumbers: <String>[
          '8912313',
          '84423423',
          '8423423',
        ],
      ));
  }

  void dispose() {}
}
