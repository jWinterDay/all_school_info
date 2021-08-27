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
      updateCreds: (actionEvent) => _updateCreds(s, actionEvent.value),
      // ignore: always_specify_types
      updateToken: (actionEvent) => s.copyWith(token: actionEvent.value),
      // ignore: always_specify_types
      updateRefreshToken: (actionEvent) => s.copyWith(refreshToken: actionEvent.value),
      orElse: () {
        return s;
      },
    );
  }

  return s;
}

UserState _updateCreds(
  UserState state,
  UserState userState,
) {
  return state.copyWith(
    loggedIn: true,
    userId: userState.userId,
    firstName: userState.firstName,
    lastName: userState.lastName,
    email: userState.email,
    accessGroups: userState.accessGroups,
    classLetter: userState.classLetter,
    classNumber: userState.classNumber,
    classProfile: userState.classProfile,
    lessonList: userState.lessonList,
    phoneNumbers: userState.phoneNumbers,
    classroomManagement: userState.classroomManagement,
    refreshToken: userState.refreshToken,
    token: userState.token,
  );
}
