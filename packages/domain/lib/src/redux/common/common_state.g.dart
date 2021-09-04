// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommonState _$_$_CommonStateFromJson(Map<String, dynamic> json) {
  return _$_CommonState(
    topAnnouncementCount: json['top_announcement_count'] as int? ?? 5,
    announcementMaxTitleLength: json['announcement_max_title_length'] as int? ?? 20,
    announcementMaxContentLength: json['announcementMaxContentLength'] as int? ?? 160,
    appLifecycle: _$enumDecodeNullable(_$AppLifecycleEnumMap, json['app_lifecycle']) ?? AppLifecycle.none,
    fcmToken: json['fcmToken'] as String?,
  );
}

Map<String, dynamic> _$_$_CommonStateToJson(_$_CommonState instance) => <String, dynamic>{
      'top_announcement_count': instance.topAnnouncementCount,
      'announcement_max_title_length': instance.announcementMaxTitleLength,
      'announcementMaxContentLength': instance.announcementMaxContentLength,
      'app_lifecycle': _$AppLifecycleEnumMap[instance.appLifecycle],
      'fcmToken': instance.fcmToken,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$AppLifecycleEnumMap = {
  AppLifecycle.resumed: 'resumed',
  AppLifecycle.inactive: 'inactive',
  AppLifecycle.paused: 'paused',
  AppLifecycle.detached: 'detached',
  AppLifecycle.none: 'none',
};
