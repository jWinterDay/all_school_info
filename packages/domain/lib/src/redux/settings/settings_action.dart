import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_action.freezed.dart';

@freezed
class SettingsAction with _$SettingsAction {
  const factory SettingsAction.changeTestMode({required bool value}) = _ChangeTestMode;

  const factory SettingsAction.changeFontScale({required double value}) = _ChangeFontScale;
}
