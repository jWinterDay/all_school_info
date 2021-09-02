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
      // updateRefreshToken: (actionEvent) => s.copyWith(refreshToken: actionEvent.value),
      orElse: () {
        return s;
      },
    );
  }

  return s;
}

UserState _updateCreds(
  UserState state,
  UserState nextUserState,
) {
  return state.copyWith(
    loggedIn: state.loggedIn, // save logged in status
    userId: nextUserState.userId,
    firstName: nextUserState.firstName,
    lastName: nextUserState.lastName,
    email: nextUserState.email,
    accessGroups: nextUserState.accessGroups,
    classLetter: nextUserState.classLetter,
    classNumber: nextUserState.classNumber,
    classProfile: nextUserState.classProfile,
    lessonList: nextUserState.lessonList,
    phoneNumbers: nextUserState.phoneNumbers,
    classroomManagement: nextUserState.classroomManagement,
    token: nextUserState.token,
  );
}
