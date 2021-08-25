import 'package:domain/src/redux/announcement/announcement_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_state.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const AppState._();

  const factory AppState({
    @Default(false) @JsonKey(name: 'test_mode', defaultValue: false) bool testMode,
    @Default(1) @JsonKey(name: 'font_scale', defaultValue: 1) double fontScale,

    //
    @Default(UserState()) @JsonKey(name: 'user_state') UserState userState,
    @Default(AnnouncementState()) @JsonKey(name: 'announcement_state') AnnouncementState announcementState,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
