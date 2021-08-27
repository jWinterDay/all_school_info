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

  _UpdateCreds updateCreds({required UserState value}) {
    return _UpdateCreds(
      value: value,
    );
  }

  _UpdateToken updateToken({required String value}) {
    return _UpdateToken(
      value: value,
    );
  }

  _UpdateRefreshToken updateRefreshToken({required String value}) {
    return _UpdateRefreshToken(
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
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(UserState value) updateCreds,
    required TResult Function(String value) updateToken,
    required TResult Function(String value) updateRefreshToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(UserState value)? updateCreds,
    TResult Function(String value)? updateToken,
    TResult Function(String value)? updateRefreshToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateCreds value) updateCreds,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_UpdateRefreshToken value) updateRefreshToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateCreds value)? updateCreds,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_UpdateRefreshToken value)? updateRefreshToken,
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
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(UserState value) updateCreds,
    required TResult Function(String value) updateToken,
    required TResult Function(String value) updateRefreshToken,
  }) {
    return changeLoggedIn(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(UserState value)? updateCreds,
    TResult Function(String value)? updateToken,
    TResult Function(String value)? updateRefreshToken,
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
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateCreds value) updateCreds,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_UpdateRefreshToken value) updateRefreshToken,
  }) {
    return changeLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateCreds value)? updateCreds,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_UpdateRefreshToken value)? updateRefreshToken,
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
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(UserState value) updateCreds,
    required TResult Function(String value) updateToken,
    required TResult Function(String value) updateRefreshToken,
  }) {
    return changeLoading(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(UserState value)? updateCreds,
    TResult Function(String value)? updateToken,
    TResult Function(String value)? updateRefreshToken,
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
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateCreds value) updateCreds,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_UpdateRefreshToken value) updateRefreshToken,
  }) {
    return changeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateCreds value)? updateCreds,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_UpdateRefreshToken value)? updateRefreshToken,
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
abstract class _$UpdateCredsCopyWith<$Res> {
  factory _$UpdateCredsCopyWith(_UpdateCreds value, $Res Function(_UpdateCreds) then) =
      __$UpdateCredsCopyWithImpl<$Res>;
  $Res call({UserState value});

  $UserStateCopyWith<$Res> get value;
}

/// @nodoc
class __$UpdateCredsCopyWithImpl<$Res> extends _$UserActionCopyWithImpl<$Res> implements _$UpdateCredsCopyWith<$Res> {
  __$UpdateCredsCopyWithImpl(_UpdateCreds _value, $Res Function(_UpdateCreds) _then)
      : super(_value, (v) => _then(v as _UpdateCreds));

  @override
  _UpdateCreds get _value => super._value as _UpdateCreds;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_UpdateCreds(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as UserState,
    ));
  }

  @override
  $UserStateCopyWith<$Res> get value {
    return $UserStateCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$_UpdateCreds implements _UpdateCreds {
  const _$_UpdateCreds({required this.value});

  @override
  final UserState value;

  @override
  String toString() {
    return 'UserAction.updateCreds(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCreds &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$UpdateCredsCopyWith<_UpdateCreds> get copyWith => __$UpdateCredsCopyWithImpl<_UpdateCreds>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(UserState value) updateCreds,
    required TResult Function(String value) updateToken,
    required TResult Function(String value) updateRefreshToken,
  }) {
    return updateCreds(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(UserState value)? updateCreds,
    TResult Function(String value)? updateToken,
    TResult Function(String value)? updateRefreshToken,
    required TResult orElse(),
  }) {
    if (updateCreds != null) {
      return updateCreds(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateCreds value) updateCreds,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_UpdateRefreshToken value) updateRefreshToken,
  }) {
    return updateCreds(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateCreds value)? updateCreds,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_UpdateRefreshToken value)? updateRefreshToken,
    required TResult orElse(),
  }) {
    if (updateCreds != null) {
      return updateCreds(this);
    }
    return orElse();
  }
}

abstract class _UpdateCreds implements UserAction {
  const factory _UpdateCreds({required UserState value}) = _$_UpdateCreds;

  UserState get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateCredsCopyWith<_UpdateCreds> get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(UserState value) updateCreds,
    required TResult Function(String value) updateToken,
    required TResult Function(String value) updateRefreshToken,
  }) {
    return updateToken(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(UserState value)? updateCreds,
    TResult Function(String value)? updateToken,
    TResult Function(String value)? updateRefreshToken,
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
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateCreds value) updateCreds,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_UpdateRefreshToken value) updateRefreshToken,
  }) {
    return updateToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateCreds value)? updateCreds,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_UpdateRefreshToken value)? updateRefreshToken,
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
abstract class _$UpdateRefreshTokenCopyWith<$Res> {
  factory _$UpdateRefreshTokenCopyWith(_UpdateRefreshToken value, $Res Function(_UpdateRefreshToken) then) =
      __$UpdateRefreshTokenCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$UpdateRefreshTokenCopyWithImpl<$Res> extends _$UserActionCopyWithImpl<$Res>
    implements _$UpdateRefreshTokenCopyWith<$Res> {
  __$UpdateRefreshTokenCopyWithImpl(_UpdateRefreshToken _value, $Res Function(_UpdateRefreshToken) _then)
      : super(_value, (v) => _then(v as _UpdateRefreshToken));

  @override
  _UpdateRefreshToken get _value => super._value as _UpdateRefreshToken;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_UpdateRefreshToken(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateRefreshToken implements _UpdateRefreshToken {
  const _$_UpdateRefreshToken({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UserAction.updateRefreshToken(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateRefreshToken &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$UpdateRefreshTokenCopyWith<_UpdateRefreshToken> get copyWith =>
      __$UpdateRefreshTokenCopyWithImpl<_UpdateRefreshToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(UserState value) updateCreds,
    required TResult Function(String value) updateToken,
    required TResult Function(String value) updateRefreshToken,
  }) {
    return updateRefreshToken(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(UserState value)? updateCreds,
    TResult Function(String value)? updateToken,
    TResult Function(String value)? updateRefreshToken,
    required TResult orElse(),
  }) {
    if (updateRefreshToken != null) {
      return updateRefreshToken(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateCreds value) updateCreds,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_UpdateRefreshToken value) updateRefreshToken,
  }) {
    return updateRefreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateCreds value)? updateCreds,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_UpdateRefreshToken value)? updateRefreshToken,
    required TResult orElse(),
  }) {
    if (updateRefreshToken != null) {
      return updateRefreshToken(this);
    }
    return orElse();
  }
}

abstract class _UpdateRefreshToken implements UserAction {
  const factory _UpdateRefreshToken({required String value}) = _$_UpdateRefreshToken;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateRefreshTokenCopyWith<_UpdateRefreshToken> get copyWith => throw _privateConstructorUsedError;
}
