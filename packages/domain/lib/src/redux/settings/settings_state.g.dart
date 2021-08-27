// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsState _$_$_SettingsStateFromJson(Map<String, dynamic> json) {
  return _$_SettingsState(
    testMode: json['test_mode'] as bool? ?? false,
    fontScale: (json['font_scale'] as num?)?.toDouble() ?? 1.0,
  );
}

Map<String, dynamic> _$_$_SettingsStateToJson(_$_SettingsState instance) => <String, dynamic>{
      'test_mode': instance.testMode,
      'font_scale': instance.fontScale,
    };
