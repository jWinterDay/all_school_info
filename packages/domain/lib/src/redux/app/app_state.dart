import 'package:domain/src/redux/announcement/announcement_state.dart';
import 'package:domain/src/redux/settings/settings_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_state.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const AppState._();

  const factory AppState({
    @Default(SettingsState()) @JsonKey(name: 'settings_state') SettingsState settingsState,
    @Default(UserState()) @JsonKey(name: 'user_state') UserState userState,
    @Default(AnnouncementState()) @JsonKey(name: 'announcement_state') AnnouncementState announcementState,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
