import 'package:redux/redux.dart';

import 'announcement_state.dart';

typedef ReducerFunc = AnnouncementState Function(AnnouncementState, dynamic);

// ignore: always_specify_types
final Reducer<AnnouncementState> announcementStateReducer = combineReducers<AnnouncementState>(<ReducerFunc>[
  // ignore: always_specify_types
  // TypedReducer<AnnouncementState, AddAnnouncementAction>((s, a) => s. copyWith( loggedIn: a.loggedIn)),
  // // ignore: always_specify_types
  // TypedReducer<UserState, UserAccessGroupAction>((s, a) => s.copyWith(accessGroups: a.accessGroups)),
  // TypedReducer<UserState, UserCredsAction>(_changedCredsAction),
  // TypedReducer<UserState, UserTokensAction>(_changedTokensAction),
]);

// UserState _changedCredsAction(UserState s, UserCredsAction a) {
//   return s.copyWith(
//     userId: a.userId,
//     firstName: a.firstName,
//     lastName: a.lastName,
//     email: a.email,
//   );
// }

// UserState _changedTokensAction(UserState s, UserTokensAction a) {
//   return s.copyWith(
//     token: a.token,
//     refreshToken: a.refreshToken,
//   );
// }
