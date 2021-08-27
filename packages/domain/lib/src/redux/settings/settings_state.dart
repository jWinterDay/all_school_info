import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';
part 'settings_state.g.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState({
    @Default(false) @JsonKey(name: 'test_mode', defaultValue: false) bool testMode,
    @Default(1.0) @JsonKey(name: 'font_scale', defaultValue: 1.0) double fontScale,
  }) = _SettingsState;

  factory SettingsState.fromJson(Map<String, dynamic> json) => _$SettingsStateFromJson(json);
}
