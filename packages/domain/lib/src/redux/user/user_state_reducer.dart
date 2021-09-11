import 'package:domain/src/redux/user/user_action.dart';
import 'package:domain/src/redux/user/user_state.dart';

UserState userReducer(UserState s, dynamic a) {
  if (a is UserAction) {
    return a.maybeMap<UserState>(
      // ignore: always_specify_types
      changeSignInInfo: (a) => _changeSignInInfo(
        s,
        emailVerified: a.emailVerified,
        isAnonymous: a.isAnonymous,
        userId: a.userId,
        email: a.email,
      ),
      // ignore: always_specify_types
      changeSignOutInfo: (a) => const UserState(),

      // ignore: always_specify_types
      authException: (a) => s.copyWith(authException: a.value),

      // ignore: always_specify_types
      changeLoading: (a) => s.copyWith(loading: a.value),
      // ignore: always_specify_types
      changeLoggedIn: (a) => s.copyWith(loggedIn: a.value),
      // ignore: always_specify_types
      updateInfo: (a) => _updateInfo(
        s,
        firstName: a.firstName,
        lastName: a.lastName,
        email: a.email,
        phoneNumbers: a.phoneNumbers,
      ),
      // ignore: always_specify_types
      changeAccessGroups: (a) => s.copyWith(accessGroups: a.value),
      // ignore: always_specify_types
      changeAvailableAccessGroups: (a) => s.copyWith(availableAccessGroups: a.value),
      // ignore: always_specify_types
      updateToken: (a) => s.copyWith(token: a.value),
      orElse: () {
        return s;
      },
    );
  }

  return s;
}

UserState _changeSignInInfo(
  UserState state, {
  String? userId,
  String? email,
  required bool emailVerified,
  required bool isAnonymous,
}) {
  return state.copyWith(
    loggedIn: true,
    emailVerified: emailVerified,
    isAnonymous: isAnonymous,
    userId: userId,
    email: email,
  );
}

UserState _updateInfo(
  UserState state, {
  String? firstName,
  String? lastName,
  String? email,
  List<String>? phoneNumbers,
}) {
  return state.copyWith(
    firstName: firstName,
    lastName: lastName,
    email: email,
    phoneNumbers: phoneNumbers,
  );
}
