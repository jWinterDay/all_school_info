import 'package:domain/domain.dart';
import 'package:domain/src/services/user/user_service.dart';
import 'package:redux/redux.dart';
import 'package:utils/logger.dart';

Future<void> fetchUserThunk(Store<AppState> store) async {
  try {
    store.dispatch(const UserAction.changeLoading(value: true));

    final UserService userService = getIt.get<UserService>();
    final UserState? userState = await userService.fetchUser();

    if (userState == null) {
      return;
    }

    // print('[thunk] userState = $userState');

    store
      ..dispatch(
        UserAction.changeSignInInfo(
          email: userState.email,
          userId: userState.userId,
          emailVerified: userState.emailVerified,
          isAnonymous: userState.isAnonymous,

          //
          firstName: userState.firstName,
          lastName: userState.lastName,
          accessGroups: userState.accessGroups,
          availableAccessGroups: userState.availableAccessGroups,
          phoneNumbers: userState.phoneNumbers,
          classNumber: userState.classNumber,
          classLetter: userState.classLetter,
          classProfile: userState.classProfile,
          classroomManagement: userState.classroomManagement,
        ),
      )
      // ..dispatch(
      //   UserAction.updateInfo(
      //     firstName: userState.firstName,
      //     lastName: userState.lastName,
      //     phoneNumbers: userState.phoneNumbers,
      //     classroomManagement: userState.classroomManagement,
      //     accessGroups: userState.accessGroups,
      //     availableAccessGroups: userState.availableAccessGroups,
      //     classLetter: userState.classLetter,
      //     classNumber: userState.classNumber,
      //     classProfile: userState.classProfile,
      //   ),
      // )
      ..dispatch(UserAction.changeAccessGroups(value: userState.accessGroups))
      ..dispatch(UserAction.changeAvailableAccessGroups(value: userState.availableAccessGroups));
  } catch (exc, stackTrace) {
    logger.e('exc $exc', exc.runtimeType, stackTrace);

    store.dispatch(UserAction.authException(AuthUnexpectedException(exc.toString())));
  } finally {
    store.dispatch(const UserAction.changeLoading(value: false));
  }
}
