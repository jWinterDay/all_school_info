// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$_$_AppStateFromJson(Map<String, dynamic> json) {
  return _$_AppState(
    userState: UserState.fromJson(json['user_state'] as Map<String, dynamic>),
    announcementState: AnnouncementState.fromJson(json['announcement_state'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AppStateToJson(_$_AppState instance) => <String, dynamic>{
      'user_state': instance.userState.toJson(),
      'announcement_state': instance.announcementState.toJson(),
    };
