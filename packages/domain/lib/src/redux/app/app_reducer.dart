import 'package:domain/src/redux/announcement/announcement_state_reducer.dart';
import 'package:domain/src/redux/common/common_reducer.dart';
import 'package:domain/src/redux/schedule/schedule_reducer.dart';
import 'package:domain/src/redux/settings/settings_reducer.dart';
import 'package:domain/src/redux/user/user_state_reducer.dart';

import 'app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return state.copyWith(
    settingsState: settingsReducer(state.settingsState, action),
    userState: userReducer(state.userState, action),
    announcementState: announcementReducer(state.announcementState, action),
    commonState: commonReducer(state.commonState, action),
    scheduleState: scheduleReducer(state.scheduleState, action),
  );
}
