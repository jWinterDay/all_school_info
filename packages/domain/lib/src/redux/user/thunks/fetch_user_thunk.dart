import 'package:domain/domain.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/redux/user/user_action.dart';
import 'package:domain/src/redux/user/user_state.dart';
import 'package:domain/src/services/user/user_service.dart';
import 'package:redux/redux.dart';
import 'package:utils/logger.dart';

void fetchUserThunk(Store<AppState> store) async {
  try {
    store.dispatch(const UserAction.changeLoading(value: true));

    final UserService userService = getIt.get<UserService>();
    final UserState? userState = await userService.fetchUser();

    // TODO
    if (userState == null) {
      return;
    }

    print('[thunk] userState = $userState');

    // userId: user.uid,
    //   email: user.email,
    //   accessGroups: <String>[
    //     'class_7',
    //   ],
    //   availableAccessGroups: <String>[
    //     'class_1',
    //     'class_2',
    //     'class_7',
    //   ],

    // emailVerified: userState.emailVerified,
    //     isAnonymous: userState.isAnonymous,
    //     email: userState.email,
    //     userId: userState.userId,

    store
      ..dispatch(
        UserAction.changeSignInInfo(
          email: userState.email,
          userId: userState.userId,
          emailVerified: userState.emailVerified,
          isAnonymous: userState.isAnonymous,
        ),
      )
      ..dispatch(
        UserAction.updateInfo(
          firstName: userState.firstName,
          lastName: userState.lastName,
          email: userState.email,
          phoneNumbers: userState.phoneNumbers,
        ),
      )
      ..dispatch(UserAction.changeAccessGroups(value: userState.accessGroups))
      ..dispatch(UserAction.changeAvailableAccessGroups(value: userState.availableAccessGroups));
  } catch (exc, stackTrace) {
    logger.e('exc $exc', exc.runtimeType, stackTrace);

    // store.dispatch(UserAction.authException(AuthUnexpectedException(exc.toString())));
  } finally {
    store.dispatch(const UserAction.changeLoading(value: false));
  }
}
