import 'package:domain/src/redux/user/user_state.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_action.freezed.dart';

@freezed
class UserAction with _$UserAction {
  const factory UserAction.changeLoggedIn({required bool value}) = _ChangeLoggedIn;

  const factory UserAction.changeLoading({required bool value}) = _ChangeLoading;

  const factory UserAction.updateCreds({required UserState value}) = _UpdateCreds;

  const factory UserAction.updateToken({required String value}) = _UpdateToken;

  const factory UserAction.updateRefreshToken({required String value}) = _UpdateRefreshToken;
}
