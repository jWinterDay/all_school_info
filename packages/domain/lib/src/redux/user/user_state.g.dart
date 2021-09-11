// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserState _$_$_UserStateFromJson(Map<String, dynamic> json) {
  return _$_UserState(
    loggedIn: json['logged_in'] as bool? ?? false,
    userId: json['user_id'] as String?,
    firstName: json['first_name'] as String?,
    lastName: json['last_name'] as String?,
    email: json['email'] as String?,
    emailVerified: json['email_verified'] as bool? ?? false,
    isAnonymous: json['is_anonymous'] as bool? ?? false,
    token: json['token'] as String?,
    accessGroups: (json['access_groups'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
    loading: json['loading'] as bool? ?? false,
    phoneNumbers: (json['phone_numbers'] as List<dynamic>?)?.map((e) => e as String).toList(),
    userType: _$enumDecodeNullable(_$UserTypeEnumMap, json['user_type']),
    classNumber: json['class_number'] as int?,
    classLetter: json['class_letter'] as String?,
    classProfile: (json['class_profile'] as List<dynamic>?)?.map((e) => e as String).toList(),
    classroomManagement: json['classroom_management'] as bool? ?? false,
    availableAccessGroups: (json['available_access_groups'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  );
}

Map<String, dynamic> _$_$_UserStateToJson(_$_UserState instance) => <String, dynamic>{
      'logged_in': instance.loggedIn,
      'user_id': instance.userId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'email_verified': instance.emailVerified,
      'is_anonymous': instance.isAnonymous,
      'token': instance.token,
      'access_groups': instance.accessGroups,
      'loading': instance.loading,
      'phone_numbers': instance.phoneNumbers,
      'user_type': _$UserTypeEnumMap[instance.userType],
      'class_number': instance.classNumber,
      'class_letter': instance.classLetter,
      'class_profile': instance.classProfile,
      'classroom_management': instance.classroomManagement,
      'available_access_groups': instance.availableAccessGroups,
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

const _$UserTypeEnumMap = {
  UserType.moderator: 'moderator',
  UserType.guest: 'guest',
  UserType.learner: 'learner',
  UserType.teacher: 'teacher',
  UserType.parent: 'parent',
};
