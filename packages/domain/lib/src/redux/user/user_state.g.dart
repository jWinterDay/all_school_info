// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserState _$_$_UserStateFromJson(Map<String, dynamic> json) {
  return _$_UserState(
    loggedIn: json['logged_in'] as bool,
    userId: json['user_id'] as String?,
    firstName: json['first_name'] as String?,
    lastName: json['last_name'] as String?,
    email: json['email'] as String?,
    token: json['token'] as String?,
    refreshToken: json['refresh_token'] as String?,
    accessGroups: (json['access_groups'] as List<dynamic>).map((e) => e as String).toList(),
    isLoading: json['is_loading'] as bool,
  );
}

Map<String, dynamic> _$_$_UserStateToJson(_$_UserState instance) => <String, dynamic>{
      'logged_in': instance.loggedIn,
      'user_id': instance.userId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'token': instance.token,
      'refresh_token': instance.refreshToken,
      'access_groups': instance.accessGroups,
      'is_loading': instance.isLoading,
    };
