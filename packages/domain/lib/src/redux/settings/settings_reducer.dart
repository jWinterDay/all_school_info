import 'settings_action.dart';
import 'settings_state.dart';

SettingsState settingsReducer(SettingsState s, dynamic a) {
  if (a is SettingsAction) {
    return a.maybeMap<SettingsState>(
      // ignore: always_specify_types
      changeTestMode: (actionEvent) => s.copyWith(testMode: actionEvent.value),
      // ignore: always_specify_types
      changeFontScale: (actionEvent) => s.copyWith(fontScale: actionEvent.value),
      orElse: () {
        return s;
      },
    );
  }

  return s;
}
