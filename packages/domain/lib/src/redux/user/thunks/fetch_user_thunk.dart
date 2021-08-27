import 'package:domain/domain.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/redux/user/user_action.dart';
import 'package:domain/src/redux/user/user_state.dart';
import 'package:domain/src/services/user/user_service.dart';
import 'package:redux/redux.dart';

void fetchUserThunk(Store<AppState> store) async {
  store.dispatch(const UserAction.changeLoading(value: true));

  final UserService userService = getIt.get<UserService>();
  final UserState userState = await userService.fetchUser();

  store..dispatch(const UserAction.changeLoading(value: false))..dispatch(UserAction.updateCreds(value: userState));
}
