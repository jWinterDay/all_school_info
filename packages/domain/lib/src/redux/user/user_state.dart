import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_access_group.dart';

part 'user_state.freezed.dart';
part 'user_state.g.dart';

const List<String> initAccesGroups = <String>[UserAccessGroup.user];

@freezed
class UserState with _$UserState {
  const UserState._();

  const factory UserState({
    @JsonKey(name: 'logged_in') @Default(false) bool loggedIn,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'refresh_token') String? refreshToken,
    @JsonKey(name: 'access_groups') @Default(initAccesGroups) List<String> accessGroups,
    @JsonKey(name: 'is_loading') @Default(false) bool isLoading,
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) => _$UserStateFromJson(json);
}
