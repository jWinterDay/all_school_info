import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_action.freezed.dart';

@freezed
class UserAction with _$UserAction {
  const factory UserAction.changeSignInInfo({
    String? userId,
    String? email,
    required bool emailVerified,
    required bool isAnonymous,
  }) = _ChangeSignInInfo;
  const factory UserAction.changeSignOutInfo() = _ChangeSignOutInfo;

  const factory UserAction.changeLoggedIn({required bool value}) = _ChangeLoggedIn;
  const factory UserAction.changeLoading({required bool value}) = _ChangeLoading;
  const factory UserAction.updateToken({required String value}) = _UpdateToken;
  const factory UserAction.authException(Exception? value) = _AuthException;

  const factory UserAction.updateInfo({
    String? firstName,
    String? lastName,
    String? email,
    List<String>? phoneNumbers,
  }) = _UpdateInfo;

  const factory UserAction.changeAccessGroups({required List<String> value}) = _ChangeAccessGroups;

  const factory UserAction.changeAvailableAccessGroups({required List<String> value}) = _ChangeAvailableAccessGroups;
}
