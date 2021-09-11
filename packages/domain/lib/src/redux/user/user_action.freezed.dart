// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserActionTearOff {
  const _$UserActionTearOff();

  _ChangeSignInInfo changeSignInInfo(
      {String? userId, String? email, required bool emailVerified, required bool isAnonymous}) {
    return _ChangeSignInInfo(
      userId: userId,
      email: email,
      emailVerified: emailVerified,
      isAnonymous: isAnonymous,
    );
  }

  _ChangeSignOutInfo changeSignOutInfo() {
    return const _ChangeSignOutInfo();
  }

  _ChangeLoggedIn changeLoggedIn({required bool value}) {
    return _ChangeLoggedIn(
      value: value,
    );
  }

  _ChangeLoading changeLoading({required bool value}) {
    return _ChangeLoading(
      value: value,
    );
  }

  _UpdateToken updateToken({required String value}) {
    return _UpdateToken(
      value: value,
    );
  }

  _AuthException authException(Exception? value) {
    return _AuthException(
      value,
    );
  }

  _UpdateInfo updateInfo({String? firstName, String? lastName, String? email, List<String>? phoneNumbers}) {
    return _UpdateInfo(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phoneNumbers: phoneNumbers,
    );
  }

  _ChangeAccessGroups changeAccessGroups({required List<String> value}) {
    return _ChangeAccessGroups(
      value: value,
    );
  }

  _ChangeAvailableAccessGroups changeAvailableAccessGroups({required List<String> value}) {
    return _ChangeAvailableAccessGroups(
      value: value,
    );
  }
}

/// @nodoc
const $UserAction = _$UserActionTearOff();

/// @nodoc
mixin _$UserAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous) changeSignInInfo,
    required TResult Function() changeSignOutInfo,
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(String value) updateToken,
    required TResult Function(Exception? value) authException,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
    required TResult Function(List<String> value) changeAvailableAccessGroups,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous)? changeSignInInfo,
    TResult Function()? changeSignOutInfo,
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(Exception? value)? authException,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
    TResult Function(List<String> value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSignInInfo value) changeSignInInfo,
    required TResult Function(_ChangeSignOutInfo value) changeSignOutInfo,
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_AuthException value) authException,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
    required TResult Function(_ChangeAvailableAccessGroups value) changeAvailableAccessGroups,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSignInInfo value)? changeSignInInfo,
    TResult Function(_ChangeSignOutInfo value)? changeSignOutInfo,
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_AuthException value)? authException,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
    TResult Function(_ChangeAvailableAccessGroups value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActionCopyWith<$Res> {
  factory $UserActionCopyWith(UserAction value, $Res Function(UserAction) then) = _$UserActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserActionCopyWithImpl<$Res> implements $UserActionCopyWith<$Res> {
  _$UserActionCopyWithImpl(this._value, this._then);

  final UserAction _value;
  // ignore: unused_field
  final $Res Function(UserAction) _then;
}

/// @nodoc
abstract class _$ChangeSignInInfoCopyWith<$Res> {
  factory _$ChangeSignInInfoCopyWith(_ChangeSignInInfo value, $Res Function(_ChangeSignInInfo) then) =
      __$ChangeSignInInfoCopyWithImpl<$Res>;
  $Res call({String? userId, String? email, bool emailVerified, bool isAnonymous});
}

/// @nodoc
class __$ChangeSignInInfoCopyWithImpl<$Res> extends _$UserActionCopyWithImpl<$Res>
    implements _$ChangeSignInInfoCopyWith<$Res> {
  __$ChangeSignInInfoCopyWithImpl(_ChangeSignInInfo _value, $Res Function(_ChangeSignInInfo) _then)
      : super(_value, (v) => _then(v as _ChangeSignInInfo));

  @override
  _ChangeSignInInfo get _value => super._value as _ChangeSignInInfo;

  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? isAnonymous = freezed,
  }) {
    return _then(_ChangeSignInInfo(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnonymous: isAnonymous == freezed
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeSignInInfo implements _ChangeSignInInfo {
  const _$_ChangeSignInInfo({this.userId, this.email, required this.emailVerified, required this.isAnonymous});

  @override
  final String? userId;
  @override
  final String? email;
  @override
  final bool emailVerified;
  @override
  final bool isAnonymous;

  @override
  String toString() {
    return 'UserAction.changeSignInInfo(userId: $userId, email: $email, emailVerified: $emailVerified, isAnonymous: $isAnonymous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeSignInInfo &&
            (identical(other.userId, userId) || const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.emailVerified, emailVerified) ||
                const DeepCollectionEquality().equals(other.emailVerified, emailVerified)) &&
            (identical(other.isAnonymous, isAnonymous) ||
                const DeepCollectionEquality().equals(other.isAnonymous, isAnonymous)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(emailVerified) ^
      const DeepCollectionEquality().hash(isAnonymous);

  @JsonKey(ignore: true)
  @override
  _$ChangeSignInInfoCopyWith<_ChangeSignInInfo> get copyWith =>
      __$ChangeSignInInfoCopyWithImpl<_ChangeSignInInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous) changeSignInInfo,
    required TResult Function() changeSignOutInfo,
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(String value) updateToken,
    required TResult Function(Exception? value) authException,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
    required TResult Function(List<String> value) changeAvailableAccessGroups,
  }) {
    return changeSignInInfo(userId, email, emailVerified, isAnonymous);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous)? changeSignInInfo,
    TResult Function()? changeSignOutInfo,
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(Exception? value)? authException,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
    TResult Function(List<String> value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (changeSignInInfo != null) {
      return changeSignInInfo(userId, email, emailVerified, isAnonymous);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSignInInfo value) changeSignInInfo,
    required TResult Function(_ChangeSignOutInfo value) changeSignOutInfo,
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_AuthException value) authException,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
    required TResult Function(_ChangeAvailableAccessGroups value) changeAvailableAccessGroups,
  }) {
    return changeSignInInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSignInInfo value)? changeSignInInfo,
    TResult Function(_ChangeSignOutInfo value)? changeSignOutInfo,
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_AuthException value)? authException,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
    TResult Function(_ChangeAvailableAccessGroups value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (changeSignInInfo != null) {
      return changeSignInInfo(this);
    }
    return orElse();
  }
}

abstract class _ChangeSignInInfo implements UserAction {
  const factory _ChangeSignInInfo(
      {String? userId, String? email, required bool emailVerified, required bool isAnonymous}) = _$_ChangeSignInInfo;

  String? get userId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  bool get isAnonymous => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeSignInInfoCopyWith<_ChangeSignInInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeSignOutInfoCopyWith<$Res> {
  factory _$ChangeSignOutInfoCopyWith(_ChangeSignOutInfo value, $Res Function(_ChangeSignOutInfo) then) =
      __$ChangeSignOutInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$ChangeSignOutInfoCopyWithImpl<$Res> extends _$UserActionCopyWithImpl<$Res>
    implements _$ChangeSignOutInfoCopyWith<$Res> {
  __$ChangeSignOutInfoCopyWithImpl(_ChangeSignOutInfo _value, $Res Function(_ChangeSignOutInfo) _then)
      : super(_value, (v) => _then(v as _ChangeSignOutInfo));

  @override
  _ChangeSignOutInfo get _value => super._value as _ChangeSignOutInfo;
}

/// @nodoc

class _$_ChangeSignOutInfo implements _ChangeSignOutInfo {
  const _$_ChangeSignOutInfo();

  @override
  String toString() {
    return 'UserAction.changeSignOutInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ChangeSignOutInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous) changeSignInInfo,
    required TResult Function() changeSignOutInfo,
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(String value) updateToken,
    required TResult Function(Exception? value) authException,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
    required TResult Function(List<String> value) changeAvailableAccessGroups,
  }) {
    return changeSignOutInfo();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous)? changeSignInInfo,
    TResult Function()? changeSignOutInfo,
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(Exception? value)? authException,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
    TResult Function(List<String> value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (changeSignOutInfo != null) {
      return changeSignOutInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSignInInfo value) changeSignInInfo,
    required TResult Function(_ChangeSignOutInfo value) changeSignOutInfo,
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_AuthException value) authException,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
    required TResult Function(_ChangeAvailableAccessGroups value) changeAvailableAccessGroups,
  }) {
    return changeSignOutInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSignInInfo value)? changeSignInInfo,
    TResult Function(_ChangeSignOutInfo value)? changeSignOutInfo,
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_AuthException value)? authException,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
    TResult Function(_ChangeAvailableAccessGroups value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (changeSignOutInfo != null) {
      return changeSignOutInfo(this);
    }
    return orElse();
  }
}

abstract class _ChangeSignOutInfo implements UserAction {
  const factory _ChangeSignOutInfo() = _$_ChangeSignOutInfo;
}

/// @nodoc
abstract class _$ChangeLoggedInCopyWith<$Res> {
  factory _$ChangeLoggedInCopyWith(_ChangeLoggedIn value, $Res Function(_ChangeLoggedIn) then) =
      __$ChangeLoggedInCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$ChangeLoggedInCopyWithImpl<$Res> extends _$UserActionCopyWithImpl<$Res>
    implements _$ChangeLoggedInCopyWith<$Res> {
  __$ChangeLoggedInCopyWithImpl(_ChangeLoggedIn _value, $Res Function(_ChangeLoggedIn) _then)
      : super(_value, (v) => _then(v as _ChangeLoggedIn));

  @override
  _ChangeLoggedIn get _value => super._value as _ChangeLoggedIn;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ChangeLoggedIn(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeLoggedIn implements _ChangeLoggedIn {
  const _$_ChangeLoggedIn({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'UserAction.changeLoggedIn(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeLoggedIn &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ChangeLoggedInCopyWith<_ChangeLoggedIn> get copyWith =>
      __$ChangeLoggedInCopyWithImpl<_ChangeLoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous) changeSignInInfo,
    required TResult Function() changeSignOutInfo,
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(String value) updateToken,
    required TResult Function(Exception? value) authException,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
    required TResult Function(List<String> value) changeAvailableAccessGroups,
  }) {
    return changeLoggedIn(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous)? changeSignInInfo,
    TResult Function()? changeSignOutInfo,
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(Exception? value)? authException,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
    TResult Function(List<String> value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (changeLoggedIn != null) {
      return changeLoggedIn(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSignInInfo value) changeSignInInfo,
    required TResult Function(_ChangeSignOutInfo value) changeSignOutInfo,
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_AuthException value) authException,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
    required TResult Function(_ChangeAvailableAccessGroups value) changeAvailableAccessGroups,
  }) {
    return changeLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSignInInfo value)? changeSignInInfo,
    TResult Function(_ChangeSignOutInfo value)? changeSignOutInfo,
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_AuthException value)? authException,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
    TResult Function(_ChangeAvailableAccessGroups value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (changeLoggedIn != null) {
      return changeLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _ChangeLoggedIn implements UserAction {
  const factory _ChangeLoggedIn({required bool value}) = _$_ChangeLoggedIn;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeLoggedInCopyWith<_ChangeLoggedIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeLoadingCopyWith<$Res> {
  factory _$ChangeLoadingCopyWith(_ChangeLoading value, $Res Function(_ChangeLoading) then) =
      __$ChangeLoadingCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$ChangeLoadingCopyWithImpl<$Res> extends _$UserActionCopyWithImpl<$Res>
    implements _$ChangeLoadingCopyWith<$Res> {
  __$ChangeLoadingCopyWithImpl(_ChangeLoading _value, $Res Function(_ChangeLoading) _then)
      : super(_value, (v) => _then(v as _ChangeLoading));

  @override
  _ChangeLoading get _value => super._value as _ChangeLoading;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ChangeLoading(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeLoading implements _ChangeLoading {
  const _$_ChangeLoading({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'UserAction.changeLoading(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeLoading &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ChangeLoadingCopyWith<_ChangeLoading> get copyWith =>
      __$ChangeLoadingCopyWithImpl<_ChangeLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous) changeSignInInfo,
    required TResult Function() changeSignOutInfo,
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(String value) updateToken,
    required TResult Function(Exception? value) authException,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
    required TResult Function(List<String> value) changeAvailableAccessGroups,
  }) {
    return changeLoading(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous)? changeSignInInfo,
    TResult Function()? changeSignOutInfo,
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(Exception? value)? authException,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
    TResult Function(List<String> value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (changeLoading != null) {
      return changeLoading(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSignInInfo value) changeSignInInfo,
    required TResult Function(_ChangeSignOutInfo value) changeSignOutInfo,
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_AuthException value) authException,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
    required TResult Function(_ChangeAvailableAccessGroups value) changeAvailableAccessGroups,
  }) {
    return changeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSignInInfo value)? changeSignInInfo,
    TResult Function(_ChangeSignOutInfo value)? changeSignOutInfo,
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_AuthException value)? authException,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
    TResult Function(_ChangeAvailableAccessGroups value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (changeLoading != null) {
      return changeLoading(this);
    }
    return orElse();
  }
}

abstract class _ChangeLoading implements UserAction {
  const factory _ChangeLoading({required bool value}) = _$_ChangeLoading;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeLoadingCopyWith<_ChangeLoading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateTokenCopyWith<$Res> {
  factory _$UpdateTokenCopyWith(_UpdateToken value, $Res Function(_UpdateToken) then) =
      __$UpdateTokenCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$UpdateTokenCopyWithImpl<$Res> extends _$UserActionCopyWithImpl<$Res> implements _$UpdateTokenCopyWith<$Res> {
  __$UpdateTokenCopyWithImpl(_UpdateToken _value, $Res Function(_UpdateToken) _then)
      : super(_value, (v) => _then(v as _UpdateToken));

  @override
  _UpdateToken get _value => super._value as _UpdateToken;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_UpdateToken(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateToken implements _UpdateToken {
  const _$_UpdateToken({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserAction.updateToken(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateToken &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$UpdateTokenCopyWith<_UpdateToken> get copyWith => __$UpdateTokenCopyWithImpl<_UpdateToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous) changeSignInInfo,
    required TResult Function() changeSignOutInfo,
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(String value) updateToken,
    required TResult Function(Exception? value) authException,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
    required TResult Function(List<String> value) changeAvailableAccessGroups,
  }) {
    return updateToken(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous)? changeSignInInfo,
    TResult Function()? changeSignOutInfo,
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(Exception? value)? authException,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
    TResult Function(List<String> value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (updateToken != null) {
      return updateToken(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSignInInfo value) changeSignInInfo,
    required TResult Function(_ChangeSignOutInfo value) changeSignOutInfo,
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_AuthException value) authException,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
    required TResult Function(_ChangeAvailableAccessGroups value) changeAvailableAccessGroups,
  }) {
    return updateToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSignInInfo value)? changeSignInInfo,
    TResult Function(_ChangeSignOutInfo value)? changeSignOutInfo,
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_AuthException value)? authException,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
    TResult Function(_ChangeAvailableAccessGroups value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (updateToken != null) {
      return updateToken(this);
    }
    return orElse();
  }
}

abstract class _UpdateToken implements UserAction {
  const factory _UpdateToken({required String value}) = _$_UpdateToken;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateTokenCopyWith<_UpdateToken> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthExceptionCopyWith<$Res> {
  factory _$AuthExceptionCopyWith(_AuthException value, $Res Function(_AuthException) then) =
      __$AuthExceptionCopyWithImpl<$Res>;
  $Res call({Exception? value});
}

/// @nodoc
class __$AuthExceptionCopyWithImpl<$Res> extends _$UserActionCopyWithImpl<$Res>
    implements _$AuthExceptionCopyWith<$Res> {
  __$AuthExceptionCopyWithImpl(_AuthException _value, $Res Function(_AuthException) _then)
      : super(_value, (v) => _then(v as _AuthException));

  @override
  _AuthException get _value => super._value as _AuthException;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_AuthException(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_AuthException implements _AuthException {
  const _$_AuthException(this.value);

  @override
  final Exception? value;

  @override
  String toString() {
    return 'UserAction.authException(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthException &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$AuthExceptionCopyWith<_AuthException> get copyWith =>
      __$AuthExceptionCopyWithImpl<_AuthException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous) changeSignInInfo,
    required TResult Function() changeSignOutInfo,
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(String value) updateToken,
    required TResult Function(Exception? value) authException,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
    required TResult Function(List<String> value) changeAvailableAccessGroups,
  }) {
    return authException(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous)? changeSignInInfo,
    TResult Function()? changeSignOutInfo,
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(Exception? value)? authException,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
    TResult Function(List<String> value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (authException != null) {
      return authException(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSignInInfo value) changeSignInInfo,
    required TResult Function(_ChangeSignOutInfo value) changeSignOutInfo,
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_AuthException value) authException,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
    required TResult Function(_ChangeAvailableAccessGroups value) changeAvailableAccessGroups,
  }) {
    return authException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSignInInfo value)? changeSignInInfo,
    TResult Function(_ChangeSignOutInfo value)? changeSignOutInfo,
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_AuthException value)? authException,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
    TResult Function(_ChangeAvailableAccessGroups value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (authException != null) {
      return authException(this);
    }
    return orElse();
  }
}

abstract class _AuthException implements UserAction {
  const factory _AuthException(Exception? value) = _$_AuthException;

  Exception? get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthExceptionCopyWith<_AuthException> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateInfoCopyWith<$Res> {
  factory _$UpdateInfoCopyWith(_UpdateInfo value, $Res Function(_UpdateInfo) then) = __$UpdateInfoCopyWithImpl<$Res>;
  $Res call({String? firstName, String? lastName, String? email, List<String>? phoneNumbers});
}

/// @nodoc
class __$UpdateInfoCopyWithImpl<$Res> extends _$UserActionCopyWithImpl<$Res> implements _$UpdateInfoCopyWith<$Res> {
  __$UpdateInfoCopyWithImpl(_UpdateInfo _value, $Res Function(_UpdateInfo) _then)
      : super(_value, (v) => _then(v as _UpdateInfo));

  @override
  _UpdateInfo get _value => super._value as _UpdateInfo;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phoneNumbers = freezed,
  }) {
    return _then(_UpdateInfo(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: phoneNumbers == freezed
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_UpdateInfo implements _UpdateInfo {
  const _$_UpdateInfo({this.firstName, this.lastName, this.email, this.phoneNumbers});

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final List<String>? phoneNumbers;

  @override
  String toString() {
    return 'UserAction.updateInfo(firstName: $firstName, lastName: $lastName, email: $email, phoneNumbers: $phoneNumbers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateInfo &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality().equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) || const DeepCollectionEquality().equals(other.lastName, lastName)) &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumbers, phoneNumbers) ||
                const DeepCollectionEquality().equals(other.phoneNumbers, phoneNumbers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumbers);

  @JsonKey(ignore: true)
  @override
  _$UpdateInfoCopyWith<_UpdateInfo> get copyWith => __$UpdateInfoCopyWithImpl<_UpdateInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous) changeSignInInfo,
    required TResult Function() changeSignOutInfo,
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(String value) updateToken,
    required TResult Function(Exception? value) authException,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
    required TResult Function(List<String> value) changeAvailableAccessGroups,
  }) {
    return updateInfo(firstName, lastName, email, phoneNumbers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous)? changeSignInInfo,
    TResult Function()? changeSignOutInfo,
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(Exception? value)? authException,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
    TResult Function(List<String> value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (updateInfo != null) {
      return updateInfo(firstName, lastName, email, phoneNumbers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSignInInfo value) changeSignInInfo,
    required TResult Function(_ChangeSignOutInfo value) changeSignOutInfo,
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_AuthException value) authException,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
    required TResult Function(_ChangeAvailableAccessGroups value) changeAvailableAccessGroups,
  }) {
    return updateInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSignInInfo value)? changeSignInInfo,
    TResult Function(_ChangeSignOutInfo value)? changeSignOutInfo,
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_AuthException value)? authException,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
    TResult Function(_ChangeAvailableAccessGroups value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (updateInfo != null) {
      return updateInfo(this);
    }
    return orElse();
  }
}

abstract class _UpdateInfo implements UserAction {
  const factory _UpdateInfo({String? firstName, String? lastName, String? email, List<String>? phoneNumbers}) =
      _$_UpdateInfo;

  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  List<String>? get phoneNumbers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateInfoCopyWith<_UpdateInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeAccessGroupsCopyWith<$Res> {
  factory _$ChangeAccessGroupsCopyWith(_ChangeAccessGroups value, $Res Function(_ChangeAccessGroups) then) =
      __$ChangeAccessGroupsCopyWithImpl<$Res>;
  $Res call({List<String> value});
}

/// @nodoc
class __$ChangeAccessGroupsCopyWithImpl<$Res> extends _$UserActionCopyWithImpl<$Res>
    implements _$ChangeAccessGroupsCopyWith<$Res> {
  __$ChangeAccessGroupsCopyWithImpl(_ChangeAccessGroups _value, $Res Function(_ChangeAccessGroups) _then)
      : super(_value, (v) => _then(v as _ChangeAccessGroups));

  @override
  _ChangeAccessGroups get _value => super._value as _ChangeAccessGroups;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ChangeAccessGroups(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ChangeAccessGroups implements _ChangeAccessGroups {
  const _$_ChangeAccessGroups({required this.value});

  @override
  final List<String> value;

  @override
  String toString() {
    return 'UserAction.changeAccessGroups(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeAccessGroups &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ChangeAccessGroupsCopyWith<_ChangeAccessGroups> get copyWith =>
      __$ChangeAccessGroupsCopyWithImpl<_ChangeAccessGroups>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous) changeSignInInfo,
    required TResult Function() changeSignOutInfo,
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(String value) updateToken,
    required TResult Function(Exception? value) authException,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
    required TResult Function(List<String> value) changeAvailableAccessGroups,
  }) {
    return changeAccessGroups(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous)? changeSignInInfo,
    TResult Function()? changeSignOutInfo,
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(Exception? value)? authException,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
    TResult Function(List<String> value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (changeAccessGroups != null) {
      return changeAccessGroups(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSignInInfo value) changeSignInInfo,
    required TResult Function(_ChangeSignOutInfo value) changeSignOutInfo,
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_AuthException value) authException,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
    required TResult Function(_ChangeAvailableAccessGroups value) changeAvailableAccessGroups,
  }) {
    return changeAccessGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSignInInfo value)? changeSignInInfo,
    TResult Function(_ChangeSignOutInfo value)? changeSignOutInfo,
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_AuthException value)? authException,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
    TResult Function(_ChangeAvailableAccessGroups value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (changeAccessGroups != null) {
      return changeAccessGroups(this);
    }
    return orElse();
  }
}

abstract class _ChangeAccessGroups implements UserAction {
  const factory _ChangeAccessGroups({required List<String> value}) = _$_ChangeAccessGroups;

  List<String> get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeAccessGroupsCopyWith<_ChangeAccessGroups> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeAvailableAccessGroupsCopyWith<$Res> {
  factory _$ChangeAvailableAccessGroupsCopyWith(
          _ChangeAvailableAccessGroups value, $Res Function(_ChangeAvailableAccessGroups) then) =
      __$ChangeAvailableAccessGroupsCopyWithImpl<$Res>;
  $Res call({List<String> value});
}

/// @nodoc
class __$ChangeAvailableAccessGroupsCopyWithImpl<$Res> extends _$UserActionCopyWithImpl<$Res>
    implements _$ChangeAvailableAccessGroupsCopyWith<$Res> {
  __$ChangeAvailableAccessGroupsCopyWithImpl(
      _ChangeAvailableAccessGroups _value, $Res Function(_ChangeAvailableAccessGroups) _then)
      : super(_value, (v) => _then(v as _ChangeAvailableAccessGroups));

  @override
  _ChangeAvailableAccessGroups get _value => super._value as _ChangeAvailableAccessGroups;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ChangeAvailableAccessGroups(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ChangeAvailableAccessGroups implements _ChangeAvailableAccessGroups {
  const _$_ChangeAvailableAccessGroups({required this.value});

  @override
  final List<String> value;

  @override
  String toString() {
    return 'UserAction.changeAvailableAccessGroups(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeAvailableAccessGroups &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ChangeAvailableAccessGroupsCopyWith<_ChangeAvailableAccessGroups> get copyWith =>
      __$ChangeAvailableAccessGroupsCopyWithImpl<_ChangeAvailableAccessGroups>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous) changeSignInInfo,
    required TResult Function() changeSignOutInfo,
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(String value) updateToken,
    required TResult Function(Exception? value) authException,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
    required TResult Function(List<String> value) changeAvailableAccessGroups,
  }) {
    return changeAvailableAccessGroups(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId, String? email, bool emailVerified, bool isAnonymous)? changeSignInInfo,
    TResult Function()? changeSignOutInfo,
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(Exception? value)? authException,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
    TResult Function(List<String> value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (changeAvailableAccessGroups != null) {
      return changeAvailableAccessGroups(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeSignInInfo value) changeSignInInfo,
    required TResult Function(_ChangeSignOutInfo value) changeSignOutInfo,
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_AuthException value) authException,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
    required TResult Function(_ChangeAvailableAccessGroups value) changeAvailableAccessGroups,
  }) {
    return changeAvailableAccessGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeSignInInfo value)? changeSignInInfo,
    TResult Function(_ChangeSignOutInfo value)? changeSignOutInfo,
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_AuthException value)? authException,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
    TResult Function(_ChangeAvailableAccessGroups value)? changeAvailableAccessGroups,
    required TResult orElse(),
  }) {
    if (changeAvailableAccessGroups != null) {
      return changeAvailableAccessGroups(this);
    }
    return orElse();
  }
}

abstract class _ChangeAvailableAccessGroups implements UserAction {
  const factory _ChangeAvailableAccessGroups({required List<String> value}) = _$_ChangeAvailableAccessGroups;

  List<String> get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeAvailableAccessGroupsCopyWith<_ChangeAvailableAccessGroups> get copyWith =>
      throw _privateConstructorUsedError;
}
