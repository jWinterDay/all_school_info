import 'package:redux/redux.dart';

import 'user_actions.dart';
import 'user_state.dart';

// ignore: always_specify_types
final Reducer<UserState> userStateReducer = combineReducers<UserState>(<UserState Function(UserState, dynamic)>[
  // ignore: always_specify_types
  TypedReducer<UserState, UserLoggedInAction>((s, a) => s.copyWith(loggedIn: a.loggedIn)),
  // ignore: always_specify_types
  TypedReducer<UserState, UserAccessGroupAction>((s, a) => s.copyWith(accessGroups: a.accessGroups)),
  TypedReducer<UserState, UserCredsAction>(_changedCredsAction),
  TypedReducer<UserState, UserTokensAction>(_changedTokensAction),
]);

UserState _changedCredsAction(UserState s, UserCredsAction a) {
  return s.copyWith(
    userId: a.userId,
    firstName: a.firstName,
    lastName: a.lastName,
    email: a.email,
  );
}

UserState _changedTokensAction(UserState s, UserTokensAction a) {
  return s.copyWith(
    token: a.token,
    refreshToken: a.refreshToken,
  );
}
