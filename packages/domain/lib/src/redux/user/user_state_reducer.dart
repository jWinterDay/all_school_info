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
        firstName: a.firstName,
        lastName: a.lastName,
        phoneNumbers: a.phoneNumbers,
        classroomManagement: a.classroomManagement,
        accessGroups: a.accessGroups,
        availableAccessGroups: a.availableAccessGroups,
        classLetter: a.classLetter,
        classNumber: a.classNumber,
        classProfile: a.classProfile,
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
        phoneNumbers: a.phoneNumbers,
        classroomManagement: a.classroomManagement,
        accessGroups: a.accessGroups,
        availableAccessGroups: a.availableAccessGroups,
        classLetter: a.classLetter,
        classNumber: a.classNumber,
        classProfile: a.classProfile,
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

  //
  String? firstName,
  String? lastName,
  List<String>? phoneNumbers,
  List<String>? accessGroups,
  List<String>? availableAccessGroups,
  int? classNumber,
  String? classLetter,
  List<String>? classProfile,
  bool classroomManagement = false,
}) {
  return state.copyWith(
    loggedIn: true,
    emailVerified: emailVerified,
    isAnonymous: isAnonymous,
    userId: userId,
    email: email,

    //
    firstName: firstName,
    lastName: lastName,
    phoneNumbers: phoneNumbers,
    accessGroups: accessGroups ?? <String>[],
    availableAccessGroups: availableAccessGroups ?? <String>[],
    classNumber: classNumber,
    classLetter: classLetter,
    classProfile: classProfile,
    classroomManagement: classroomManagement,
  );
}

UserState _updateInfo(
  UserState state, {
  String? firstName,
  String? lastName,
  List<String>? phoneNumbers,
  List<String>? accessGroups,
  List<String>? availableAccessGroups,
  int? classNumber,
  String? classLetter,
  List<String>? classProfile,
  bool classroomManagement = false,
}) {
  return state.copyWith(
    firstName: firstName,
    lastName: lastName,
    phoneNumbers: phoneNumbers,
    accessGroups: accessGroups ?? <String>[],
    availableAccessGroups: availableAccessGroups ?? <String>[],
    classNumber: classNumber,
    classLetter: classLetter,
    classProfile: classProfile,
    classroomManagement: classroomManagement,
  );
}
