import 'package:domain/domain.dart';
import 'package:domain/src/services/user/user_service.dart';
import 'package:redux/redux.dart';
import 'package:utils/logger.dart';

Future<void> signInUserWithEmailThunk(
  Store<AppState> store, {
  required String email,
  required String password,
}) async {
  try {
    store.dispatch(const UserAction.changeLoading(value: true));

    final UserService userService = getIt.get<UserService>();
    final UserState userState = await userService.signInUserWithEmail(
      email: email,
      password: password,
    );

    store.dispatch(
      UserAction.changeSignInInfo(
        emailVerified: userState.emailVerified,
        isAnonymous: userState.isAnonymous,
        email: userState.email,
        userId: userState.userId,

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
    );
  } on AuthUserNotFoundException catch (exc) {
    store.dispatch(UserAction.authException(exc));
  } on AuthWrongPasswordException catch (exc) {
    store.dispatch(UserAction.authException(exc));
  } on AuthInvalidEmailException catch (exc) {
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
