import 'package:domain/domain.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/redux/user/user_action.dart';
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

    final UserState? userState = await userService.createUserWithEmail(
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

    print('created userState = $userState');
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
