// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserState _$UserStateFromJson(Map<String, dynamic> json) {
  return _UserState.fromJson(json);
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _UserState call(
      {@JsonKey(name: 'logged_in') bool loggedIn = false,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'refresh_token') String? refreshToken,
      @JsonKey(name: 'access_groups') List<String> accessGroups = initAccesGroups,
      @JsonKey(name: 'is_loading') bool isLoading = false}) {
    return _UserState(
      loggedIn: loggedIn,
      userId: userId,
      firstName: firstName,
      lastName: lastName,
      email: email,
      token: token,
      refreshToken: refreshToken,
      accessGroups: accessGroups,
      isLoading: isLoading,
    );
  }

  UserState fromJson(Map<String, Object> json) {
    return UserState.fromJson(json);
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @JsonKey(name: 'logged_in')
  bool get loggedIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String? get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_groups')
  List<String> get accessGroups => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_loading')
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) = _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'logged_in') bool loggedIn,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'refresh_token') String? refreshToken,
      @JsonKey(name: 'access_groups') List<String> accessGroups,
      @JsonKey(name: 'is_loading') bool isLoading});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? loggedIn = freezed,
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? token = freezed,
    Object? refreshToken = freezed,
    Object? accessGroups = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      loggedIn: loggedIn == freezed
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessGroups: accessGroups == freezed
          ? _value.accessGroups
          : accessGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(_UserState value, $Res Function(_UserState) then) = __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'logged_in') bool loggedIn,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'refresh_token') String? refreshToken,
      @JsonKey(name: 'access_groups') List<String> accessGroups,
      @JsonKey(name: 'is_loading') bool isLoading});
}

/// @nodoc
class __$UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res> implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(_UserState _value, $Res Function(_UserState) _then)
      : super(_value, (v) => _then(v as _UserState));

  @override
  _UserState get _value => super._value as _UserState;

  @override
  $Res call({
    Object? loggedIn = freezed,
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? token = freezed,
    Object? refreshToken = freezed,
    Object? accessGroups = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_UserState(
      loggedIn: loggedIn == freezed
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessGroups: accessGroups == freezed
          ? _value.accessGroups
          : accessGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserState extends _UserState {
  const _$_UserState(
      {@JsonKey(name: 'logged_in') this.loggedIn = false,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'token') this.token,
      @JsonKey(name: 'refresh_token') this.refreshToken,
      @JsonKey(name: 'access_groups') this.accessGroups = initAccesGroups,
      @JsonKey(name: 'is_loading') this.isLoading = false})
      : super._();

  factory _$_UserState.fromJson(Map<String, dynamic> json) => _$_$_UserStateFromJson(json);

  @override
  @JsonKey(name: 'logged_in')
  final bool loggedIn;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'token')
  final String? token;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  @override
  @JsonKey(name: 'access_groups')
  final List<String> accessGroups;
  @override
  @JsonKey(name: 'is_loading')
  final bool isLoading;

  @override
  String toString() {
    return 'UserState(loggedIn: $loggedIn, userId: $userId, firstName: $firstName, lastName: $lastName, email: $email, token: $token, refreshToken: $refreshToken, accessGroups: $accessGroups, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserState &&
            (identical(other.loggedIn, loggedIn) || const DeepCollectionEquality().equals(other.loggedIn, loggedIn)) &&
            (identical(other.userId, userId) || const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality().equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) || const DeepCollectionEquality().equals(other.lastName, lastName)) &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.token, token) || const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(other.refreshToken, refreshToken)) &&
            (identical(other.accessGroups, accessGroups) ||
                const DeepCollectionEquality().equals(other.accessGroups, accessGroups)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality().equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loggedIn) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(accessGroups) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$UserStateCopyWith<_UserState> get copyWith => __$UserStateCopyWithImpl<_UserState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserStateToJson(this);
  }
}

abstract class _UserState extends UserState {
  const factory _UserState(
      {@JsonKey(name: 'logged_in') bool loggedIn,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'refresh_token') String? refreshToken,
      @JsonKey(name: 'access_groups') List<String> accessGroups,
      @JsonKey(name: 'is_loading') bool isLoading}) = _$_UserState;
  const _UserState._() : super._();

  factory _UserState.fromJson(Map<String, dynamic> json) = _$_UserState.fromJson;

  @override
  @JsonKey(name: 'logged_in')
  bool get loggedIn => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'refresh_token')
  String? get refreshToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'access_groups')
  List<String> get accessGroups => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_loading')
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserStateCopyWith<_UserState> get copyWith => throw _privateConstructorUsedError;
}
