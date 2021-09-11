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
      {@JsonKey(name: 'logged_in', defaultValue: false)
          bool loggedIn = false,
      @JsonKey(name: 'user_id')
          String? userId,
      @JsonKey(name: 'first_name')
          String? firstName,
      @JsonKey(name: 'last_name')
          String? lastName,
      @JsonKey(name: 'email')
          String? email,
      @JsonKey(name: 'token')
          String? token,
      @JsonKey(name: 'access_groups', defaultValue: const <String>[])
          List<String> accessGroups = const <String>[],
      @JsonKey(name: 'loading', defaultValue: false)
          bool loading = false,
      @JsonKey(name: 'phone_numbers')
          List<String>? phoneNumbers,
      @JsonKey(ignore: true)
          Exception? authException,
      @JsonKey(name: 'user_type', defaultValue: UserType.guest)
          UserType userType = UserType.guest,
      @JsonKey(name: 'class_number', defaultValue: 1)
          int classNumber = 1,
      @JsonKey(name: 'class_letter')
          String? classLetter,
      @JsonKey(name: 'class_profile', defaultValue: const <String>[])
          List<String> classProfile = const <String>[],
      @JsonKey(name: 'classroom_management', defaultValue: false)
          bool classroomManagement = false,
      @JsonKey(name: 'available_access_groups', defaultValue: const <String>[])
          List<String> availableAccessGroups = const <String>[]}) {
    return _UserState(
      loggedIn: loggedIn,
      userId: userId,
      firstName: firstName,
      lastName: lastName,
      email: email,
      token: token,
      accessGroups: accessGroups,
      loading: loading,
      phoneNumbers: phoneNumbers,
      authException: authException,
      userType: userType,
      classNumber: classNumber,
      classLetter: classLetter,
      classProfile: classProfile,
      classroomManagement: classroomManagement,
      availableAccessGroups: availableAccessGroups,
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
  @JsonKey(name: 'logged_in', defaultValue: false)
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
  String? get token => throw _privateConstructorUsedError; // token for push notifications
  @JsonKey(name: 'access_groups', defaultValue: const <String>[])
  List<String> get accessGroups => throw _privateConstructorUsedError; // own
  @JsonKey(name: 'loading', defaultValue: false)
  bool get loading => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_numbers')
  List<String>? get phoneNumbers => throw _privateConstructorUsedError; // common
  @JsonKey(ignore: true)
  Exception? get authException => throw _privateConstructorUsedError; // class additional info
  @JsonKey(name: 'user_type', defaultValue: UserType.guest)
  UserType get userType => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_number', defaultValue: 1)
  int get classNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_letter')
  String? get classLetter => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_profile', defaultValue: const <String>[])
  List<String> get classProfile => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_management', defaultValue: false)
  bool get classroomManagement => throw _privateConstructorUsedError; // management
  @JsonKey(name: 'available_access_groups', defaultValue: const <String>[])
  List<String> get availableAccessGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) = _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'logged_in', defaultValue: false) bool loggedIn,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'access_groups', defaultValue: const <String>[]) List<String> accessGroups,
      @JsonKey(name: 'loading', defaultValue: false) bool loading,
      @JsonKey(name: 'phone_numbers') List<String>? phoneNumbers,
      @JsonKey(ignore: true) Exception? authException,
      @JsonKey(name: 'user_type', defaultValue: UserType.guest) UserType userType,
      @JsonKey(name: 'class_number', defaultValue: 1) int classNumber,
      @JsonKey(name: 'class_letter') String? classLetter,
      @JsonKey(name: 'class_profile', defaultValue: const <String>[]) List<String> classProfile,
      @JsonKey(name: 'classroom_management', defaultValue: false) bool classroomManagement,
      @JsonKey(name: 'available_access_groups', defaultValue: const <String>[]) List<String> availableAccessGroups});
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
    Object? accessGroups = freezed,
    Object? loading = freezed,
    Object? phoneNumbers = freezed,
    Object? authException = freezed,
    Object? userType = freezed,
    Object? classNumber = freezed,
    Object? classLetter = freezed,
    Object? classProfile = freezed,
    Object? classroomManagement = freezed,
    Object? availableAccessGroups = freezed,
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
      accessGroups: accessGroups == freezed
          ? _value.accessGroups
          : accessGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumbers: phoneNumbers == freezed
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authException: authException == freezed
          ? _value.authException
          : authException // ignore: cast_nullable_to_non_nullable
              as Exception?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      classNumber: classNumber == freezed
          ? _value.classNumber
          : classNumber // ignore: cast_nullable_to_non_nullable
              as int,
      classLetter: classLetter == freezed
          ? _value.classLetter
          : classLetter // ignore: cast_nullable_to_non_nullable
              as String?,
      classProfile: classProfile == freezed
          ? _value.classProfile
          : classProfile // ignore: cast_nullable_to_non_nullable
              as List<String>,
      classroomManagement: classroomManagement == freezed
          ? _value.classroomManagement
          : classroomManagement // ignore: cast_nullable_to_non_nullable
              as bool,
      availableAccessGroups: availableAccessGroups == freezed
          ? _value.availableAccessGroups
          : availableAccessGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(_UserState value, $Res Function(_UserState) then) = __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'logged_in', defaultValue: false) bool loggedIn,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'access_groups', defaultValue: const <String>[]) List<String> accessGroups,
      @JsonKey(name: 'loading', defaultValue: false) bool loading,
      @JsonKey(name: 'phone_numbers') List<String>? phoneNumbers,
      @JsonKey(ignore: true) Exception? authException,
      @JsonKey(name: 'user_type', defaultValue: UserType.guest) UserType userType,
      @JsonKey(name: 'class_number', defaultValue: 1) int classNumber,
      @JsonKey(name: 'class_letter') String? classLetter,
      @JsonKey(name: 'class_profile', defaultValue: const <String>[]) List<String> classProfile,
      @JsonKey(name: 'classroom_management', defaultValue: false) bool classroomManagement,
      @JsonKey(name: 'available_access_groups', defaultValue: const <String>[]) List<String> availableAccessGroups});
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
    Object? accessGroups = freezed,
    Object? loading = freezed,
    Object? phoneNumbers = freezed,
    Object? authException = freezed,
    Object? userType = freezed,
    Object? classNumber = freezed,
    Object? classLetter = freezed,
    Object? classProfile = freezed,
    Object? classroomManagement = freezed,
    Object? availableAccessGroups = freezed,
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
      accessGroups: accessGroups == freezed
          ? _value.accessGroups
          : accessGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumbers: phoneNumbers == freezed
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authException: authException == freezed
          ? _value.authException
          : authException // ignore: cast_nullable_to_non_nullable
              as Exception?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      classNumber: classNumber == freezed
          ? _value.classNumber
          : classNumber // ignore: cast_nullable_to_non_nullable
              as int,
      classLetter: classLetter == freezed
          ? _value.classLetter
          : classLetter // ignore: cast_nullable_to_non_nullable
              as String?,
      classProfile: classProfile == freezed
          ? _value.classProfile
          : classProfile // ignore: cast_nullable_to_non_nullable
              as List<String>,
      classroomManagement: classroomManagement == freezed
          ? _value.classroomManagement
          : classroomManagement // ignore: cast_nullable_to_non_nullable
              as bool,
      availableAccessGroups: availableAccessGroups == freezed
          ? _value.availableAccessGroups
          : availableAccessGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserState extends _UserState {
  const _$_UserState(
      {@JsonKey(name: 'logged_in', defaultValue: false)
          this.loggedIn = false,
      @JsonKey(name: 'user_id')
          this.userId,
      @JsonKey(name: 'first_name')
          this.firstName,
      @JsonKey(name: 'last_name')
          this.lastName,
      @JsonKey(name: 'email')
          this.email,
      @JsonKey(name: 'token')
          this.token,
      @JsonKey(name: 'access_groups', defaultValue: const <String>[])
          this.accessGroups = const <String>[],
      @JsonKey(name: 'loading', defaultValue: false)
          this.loading = false,
      @JsonKey(name: 'phone_numbers')
          this.phoneNumbers,
      @JsonKey(ignore: true)
          this.authException,
      @JsonKey(name: 'user_type', defaultValue: UserType.guest)
          this.userType = UserType.guest,
      @JsonKey(name: 'class_number', defaultValue: 1)
          this.classNumber = 1,
      @JsonKey(name: 'class_letter')
          this.classLetter,
      @JsonKey(name: 'class_profile', defaultValue: const <String>[])
          this.classProfile = const <String>[],
      @JsonKey(name: 'classroom_management', defaultValue: false)
          this.classroomManagement = false,
      @JsonKey(name: 'available_access_groups', defaultValue: const <String>[])
          this.availableAccessGroups = const <String>[]})
      : super._();

  factory _$_UserState.fromJson(Map<String, dynamic> json) => _$_$_UserStateFromJson(json);

  @override
  @JsonKey(name: 'logged_in', defaultValue: false)
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
  @override // token for push notifications
  @JsonKey(name: 'access_groups', defaultValue: const <String>[])
  final List<String> accessGroups;
  @override // own
  @JsonKey(name: 'loading', defaultValue: false)
  final bool loading;
  @override
  @JsonKey(name: 'phone_numbers')
  final List<String>? phoneNumbers;
  @override // common
  @JsonKey(ignore: true)
  final Exception? authException;
  @override // class additional info
  @JsonKey(name: 'user_type', defaultValue: UserType.guest)
  final UserType userType;
  @override
  @JsonKey(name: 'class_number', defaultValue: 1)
  final int classNumber;
  @override
  @JsonKey(name: 'class_letter')
  final String? classLetter;
  @override
  @JsonKey(name: 'class_profile', defaultValue: const <String>[])
  final List<String> classProfile;
  @override
  @JsonKey(name: 'classroom_management', defaultValue: false)
  final bool classroomManagement;
  @override // management
  @JsonKey(name: 'available_access_groups', defaultValue: const <String>[])
  final List<String> availableAccessGroups;

  @override
  String toString() {
    return 'UserState(loggedIn: $loggedIn, userId: $userId, firstName: $firstName, lastName: $lastName, email: $email, token: $token, accessGroups: $accessGroups, loading: $loading, phoneNumbers: $phoneNumbers, authException: $authException, userType: $userType, classNumber: $classNumber, classLetter: $classLetter, classProfile: $classProfile, classroomManagement: $classroomManagement, availableAccessGroups: $availableAccessGroups)';
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
            (identical(other.accessGroups, accessGroups) ||
                const DeepCollectionEquality().equals(other.accessGroups, accessGroups)) &&
            (identical(other.loading, loading) || const DeepCollectionEquality().equals(other.loading, loading)) &&
            (identical(other.phoneNumbers, phoneNumbers) ||
                const DeepCollectionEquality().equals(other.phoneNumbers, phoneNumbers)) &&
            (identical(other.authException, authException) ||
                const DeepCollectionEquality().equals(other.authException, authException)) &&
            (identical(other.userType, userType) || const DeepCollectionEquality().equals(other.userType, userType)) &&
            (identical(other.classNumber, classNumber) ||
                const DeepCollectionEquality().equals(other.classNumber, classNumber)) &&
            (identical(other.classLetter, classLetter) ||
                const DeepCollectionEquality().equals(other.classLetter, classLetter)) &&
            (identical(other.classProfile, classProfile) ||
                const DeepCollectionEquality().equals(other.classProfile, classProfile)) &&
            (identical(other.classroomManagement, classroomManagement) ||
                const DeepCollectionEquality().equals(other.classroomManagement, classroomManagement)) &&
            (identical(other.availableAccessGroups, availableAccessGroups) ||
                const DeepCollectionEquality().equals(other.availableAccessGroups, availableAccessGroups)));
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
      const DeepCollectionEquality().hash(accessGroups) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(phoneNumbers) ^
      const DeepCollectionEquality().hash(authException) ^
      const DeepCollectionEquality().hash(userType) ^
      const DeepCollectionEquality().hash(classNumber) ^
      const DeepCollectionEquality().hash(classLetter) ^
      const DeepCollectionEquality().hash(classProfile) ^
      const DeepCollectionEquality().hash(classroomManagement) ^
      const DeepCollectionEquality().hash(availableAccessGroups);

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
      {@JsonKey(name: 'logged_in', defaultValue: false)
          bool loggedIn,
      @JsonKey(name: 'user_id')
          String? userId,
      @JsonKey(name: 'first_name')
          String? firstName,
      @JsonKey(name: 'last_name')
          String? lastName,
      @JsonKey(name: 'email')
          String? email,
      @JsonKey(name: 'token')
          String? token,
      @JsonKey(name: 'access_groups', defaultValue: const <String>[])
          List<String> accessGroups,
      @JsonKey(name: 'loading', defaultValue: false)
          bool loading,
      @JsonKey(name: 'phone_numbers')
          List<String>? phoneNumbers,
      @JsonKey(ignore: true)
          Exception? authException,
      @JsonKey(name: 'user_type', defaultValue: UserType.guest)
          UserType userType,
      @JsonKey(name: 'class_number', defaultValue: 1)
          int classNumber,
      @JsonKey(name: 'class_letter')
          String? classLetter,
      @JsonKey(name: 'class_profile', defaultValue: const <String>[])
          List<String> classProfile,
      @JsonKey(name: 'classroom_management', defaultValue: false)
          bool classroomManagement,
      @JsonKey(name: 'available_access_groups', defaultValue: const <String>[])
          List<String> availableAccessGroups}) = _$_UserState;
  const _UserState._() : super._();

  factory _UserState.fromJson(Map<String, dynamic> json) = _$_UserState.fromJson;

  @override
  @JsonKey(name: 'logged_in', defaultValue: false)
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
  @override // token for push notifications
  @JsonKey(name: 'access_groups', defaultValue: const <String>[])
  List<String> get accessGroups => throw _privateConstructorUsedError;
  @override // own
  @JsonKey(name: 'loading', defaultValue: false)
  bool get loading => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_numbers')
  List<String>? get phoneNumbers => throw _privateConstructorUsedError;
  @override // common
  @JsonKey(ignore: true)
  Exception? get authException => throw _privateConstructorUsedError;
  @override // class additional info
  @JsonKey(name: 'user_type', defaultValue: UserType.guest)
  UserType get userType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'class_number', defaultValue: 1)
  int get classNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'class_letter')
  String? get classLetter => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'class_profile', defaultValue: const <String>[])
  List<String> get classProfile => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'classroom_management', defaultValue: false)
  bool get classroomManagement => throw _privateConstructorUsedError;
  @override // management
  @JsonKey(name: 'available_access_groups', defaultValue: const <String>[])
  List<String> get availableAccessGroups => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserStateCopyWith<_UserState> get copyWith => throw _privateConstructorUsedError;
}
