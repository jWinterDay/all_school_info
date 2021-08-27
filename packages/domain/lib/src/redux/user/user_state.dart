import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/lesson_name_model.dart';
import 'models/user_type.dart';
import 'user_access_group.dart';

part 'user_state.freezed.dart';
part 'user_state.g.dart';

const List<String> initAccesGroups = <String>[UserAccessGroup.user];

@freezed
class UserState with _$UserState {
  const UserState._();

  const factory UserState({
    @JsonKey(name: 'logged_in', defaultValue: false) @Default(false) bool loggedIn,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'refresh_token') String? refreshToken,
    @JsonKey(name: 'access_groups', defaultValue: initAccesGroups) @Default(initAccesGroups) List<String> accessGroups,
    @JsonKey(name: 'loading', defaultValue: false) @Default(false) bool loading,

    // additional info
    @JsonKey(name: 'user_type', defaultValue: UserType.learner) @Default(UserType.learner) UserType userType,
    @JsonKey(name: 'class_number', defaultValue: 1) @Default(1) int classNumber,
    @JsonKey(name: 'class_letter') String? classLetter,
    @JsonKey(name: 'class_profile', defaultValue: <String>[]) @Default(<String>[]) List<String> classProfile,

    // learner
    @JsonKey(name: 'phone_numbers') List<String>? phoneNumbers,

    // teacher
    @JsonKey(name: 'classroom_management', defaultValue: false) @Default(false) bool classroomManagement,
    @JsonKey(name: 'lesson_list') List<LessonNameModel>? lessonList,
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) => _$UserStateFromJson(json);
}
