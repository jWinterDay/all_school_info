import 'package:domain/src/redux/user/user_action.dart';
import 'package:domain/src/redux/user/user_state.dart';

UserState userReducer(UserState s, dynamic a) {
  if (a is UserAction) {
    return a.maybeMap<UserState>(
      // ignore: always_specify_types
      changeLoading: (actionEvent) => s.copyWith(loading: actionEvent.value),
      // ignore: always_specify_types
      changeLoggedIn: (actionEvent) => s.copyWith(loggedIn: actionEvent.value),
      // ignore: always_specify_types
      updateInfo: (actionEvent) => _updateInfo(
        s,
        firstName: actionEvent.firstName,
        lastName: actionEvent.lastName,
        email: actionEvent.email,
        phoneNumbers: actionEvent.phoneNumbers,
      ),
      // ignore: always_specify_types
      changeAccessGroups: (actionEvent) => s.copyWith(accessGroups: actionEvent.value),
      // ignore: always_specify_types
      changeAvailableAccessGroups: (actionEvent) => s.copyWith(availableAccessGroups: actionEvent.value),
      // ignore: always_specify_types
      updateToken: (actionEvent) => s.copyWith(token: actionEvent.value),
      orElse: () {
        return s;
      },
    );
  }

  return s;
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
