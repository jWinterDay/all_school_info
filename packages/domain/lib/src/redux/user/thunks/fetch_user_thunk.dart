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

  print('-------thunk user = $userState');

  store
    ..dispatch(const UserAction.changeLoading(value: false))
    ..dispatch(UserAction.updateInfo(
      firstName: userState.firstName,
      lastName: userState.lastName,
      email: userState.email,
      phoneNumbers: userState.phoneNumbers,
    ))
    ..dispatch(UserAction.changeAccessGroups(value: userState.accessGroups))
    ..dispatch(UserAction.changeAvailableAccessGroups(value: userState.availableAccessGroups));
}
