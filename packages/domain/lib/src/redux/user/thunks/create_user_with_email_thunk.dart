import 'package:domain/domain.dart';
import 'package:domain/src/services/user/user_service.dart';
import 'package:redux/redux.dart';
import 'package:utils/logger.dart';

Future<void> createUserWithEmailThunk(
  Store<AppState> store, {
  required String email,
  required String password,

  // additional info
  String? firstName,
  String? lastName,
  List<String> accessGroups = const <String>[],
  List<String> availableAccessGroups = const <String>[],
  List<String>? phoneNumbers = const <String>[],
  int? classNumber,
  String? classLetter,
  List<String>? classProfile,
  bool classroomManagement = false,
}) async {
  try {
    store.dispatch(const UserAction.changeLoading(value: true));

    final UserService userService = getIt.get<UserService>();

    final UserState userState = await userService.createUserWithEmail(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      accessGroups: accessGroups,
      availableAccessGroups: availableAccessGroups,
      phoneNumbers: phoneNumbers,
      classNumber: classNumber,
      classLetter: classLetter,
      classProfile: classProfile,
      classroomManagement: classroomManagement,
    );

    // print('created userState = $userState');

    // todo
    // if (userState == null) {
    //   return;
    // }

    store
      ..dispatch(
        UserAction.changeSignInInfo(
          email: userState.email,
          userId: userState.userId,
          emailVerified: userState.emailVerified,
          isAnonymous: userState.isAnonymous,

          //
          firstName: firstName,
          lastName: lastName,
          accessGroups: accessGroups,
          availableAccessGroups: availableAccessGroups,
          phoneNumbers: phoneNumbers,
          classNumber: classNumber,
          classLetter: classLetter,
          classProfile: classProfile,
          classroomManagement: classroomManagement,
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
  } on AuthWeakPasswordException catch (exc) {
    store.dispatch(UserAction.authException(exc));
  } on AuthEmailAlreadyInUseException catch (exc) {
    store.dispatch(UserAction.authException(exc));
  } on AuthUnknownException catch (exc) {
    store.dispatch(UserAction.authException(exc));
  } on AuthUnexpectedException catch (exc) {
    store.dispatch(UserAction.authException(exc));
  } catch (exc, stackTrace) {
    logger.e('Unknown exception $exc', exc.runtimeType, stackTrace);
  } finally {
    store.dispatch(const UserAction.changeLoading(value: false));
  }
}
