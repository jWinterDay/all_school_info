import 'package:domain/src/redux/announcement/announcement_state_reducer.dart';
import 'package:domain/src/redux/settings/settings_reducer.dart';
import 'package:domain/src/redux/user/user_state_reducer.dart';

import 'app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return state.copyWith(
    settingsState: settingsReducer(state.settingsState, action),
    userState: userReducer(state.userState, action),
    announcementState: announcementReducer(state.announcementState, action),
  );
}
