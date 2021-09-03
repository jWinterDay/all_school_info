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

  _UpdateToken updateToken({required String value}) {
    return _UpdateToken(
      value: value,
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
}

/// @nodoc
const $UserAction = _$UserActionTearOff();

/// @nodoc
mixin _$UserAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(String value) updateToken,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
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
    required TResult Function(String value) updateToken,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
  }) {
    return changeLoggedIn(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
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
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
  }) {
    return changeLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
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
    required TResult Function(String value) updateToken,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
  }) {
    return changeLoading(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
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
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
  }) {
    return changeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
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
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(String value) updateToken,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
  }) {
    return updateToken(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
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
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
  }) {
    return updateToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
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

  @override // String userId, {
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
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(String value) updateToken,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
  }) {
    return updateInfo(firstName, lastName, email, phoneNumbers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
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
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
  }) {
    return updateInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
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

// String userId, {
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
    required TResult Function(bool value) changeLoggedIn,
    required TResult Function(bool value) changeLoading,
    required TResult Function(String value) updateToken,
    required TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)
        updateInfo,
    required TResult Function(List<String> value) changeAccessGroups,
  }) {
    return changeAccessGroups(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeLoggedIn,
    TResult Function(bool value)? changeLoading,
    TResult Function(String value)? updateToken,
    TResult Function(String? firstName, String? lastName, String? email, List<String>? phoneNumbers)? updateInfo,
    TResult Function(List<String> value)? changeAccessGroups,
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
    required TResult Function(_ChangeLoggedIn value) changeLoggedIn,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_UpdateToken value) updateToken,
    required TResult Function(_UpdateInfo value) updateInfo,
    required TResult Function(_ChangeAccessGroups value) changeAccessGroups,
  }) {
    return changeAccessGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLoggedIn value)? changeLoggedIn,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_UpdateToken value)? updateToken,
    TResult Function(_UpdateInfo value)? updateInfo,
    TResult Function(_ChangeAccessGroups value)? changeAccessGroups,
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
