import 'package:domain/domain.dart';
import 'package:domain/src/services/user/user_service.dart';
import 'package:redux/redux.dart';
import 'package:utils/logger.dart';

Future<void> signOutUserThunk(Store<AppState> store) async {
  try {
    store.dispatch(const UserAction.changeLoading(value: true));

    final UserService userService = getIt.get<UserService>();
    await userService.signOut();

    store.dispatch(const UserAction.changeSignOutInfo());
  } catch (exc, stackTrace) {
    logger.e('Unknown exception $exc', exc.runtimeType, stackTrace);

    store.dispatch(UserAction.authException(AuthUnexpectedException(exc.toString())));
  } finally {
    store.dispatch(const UserAction.changeLoading(value: false));
  }
}
