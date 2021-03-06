import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/user_type.dart';

part 'user_state.freezed.dart';
part 'user_state.g.dart';

@freezed
class UserState with _$UserState {
  const UserState._();

  const factory UserState({
    @JsonKey(name: 'logged_in', defaultValue: false) @Default(false) bool loggedIn,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'email_verified', defaultValue: false) @Default(false) bool emailVerified,
    @JsonKey(name: 'is_anonymous', defaultValue: false) @Default(false) bool isAnonymous,
    @JsonKey(name: 'token') String? token, // token for push notifications
    @JsonKey(name: 'access_groups', defaultValue: <String>[]) @Default(<String>[]) List<String> accessGroups, // own
    @JsonKey(name: 'loading', defaultValue: false) @Default(false) bool loading,
    @JsonKey(name: 'phone_numbers') List<String>? phoneNumbers,

    // common
    @JsonKey(ignore: true) Exception? authException,

    // class additional info (for learners)
    @JsonKey(name: 'user_type') UserType? userType,
    @JsonKey(name: 'class_number') int? classNumber,
    @JsonKey(name: 'class_letter') String? classLetter,
    @JsonKey(name: 'class_profile') List<String>? classProfile,
    @JsonKey(name: 'classroom_management', defaultValue: false) @Default(false) bool classroomManagement,

    // management
    @JsonKey(name: 'available_access_groups', defaultValue: <String>[])
    @Default(<String>[])
        List<String> availableAccessGroups,
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) => _$UserStateFromJson(json);

  /// can create announcements
  bool get canCreateAnnouncements {
    return loggedIn && availableAccessGroups.isNotEmpty; // && userType == UserType.moderator;
  }
}
