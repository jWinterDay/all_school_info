// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {@JsonKey(name: 'settings_state') SettingsState settingsState = const SettingsState(),
      @JsonKey(name: 'user_state') UserState userState = const UserState(),
      @JsonKey(name: 'announcement_state') AnnouncementState announcementState = const AnnouncementState(),
      @JsonKey(name: 'common_state') CommonState commonState = const CommonState(),
      @JsonKey(name: 'schedule_state') ScheduleState scheduleState = const ScheduleState()}) {
    return _AppState(
      settingsState: settingsState,
      userState: userState,
      announcementState: announcementState,
      commonState: commonState,
      scheduleState: scheduleState,
    );
  }

  AppState fromJson(Map<String, Object> json) {
    return AppState.fromJson(json);
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @JsonKey(name: 'settings_state')
  SettingsState get settingsState => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_state')
  UserState get userState => throw _privateConstructorUsedError;
  @JsonKey(name: 'announcement_state')
  AnnouncementState get announcementState => throw _privateConstructorUsedError;
  @JsonKey(name: 'common_state')
  CommonState get commonState => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_state')
  ScheduleState get scheduleState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) = _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'settings_state') SettingsState settingsState,
      @JsonKey(name: 'user_state') UserState userState,
      @JsonKey(name: 'announcement_state') AnnouncementState announcementState,
      @JsonKey(name: 'common_state') CommonState commonState,
      @JsonKey(name: 'schedule_state') ScheduleState scheduleState});

  $SettingsStateCopyWith<$Res> get settingsState;
  $UserStateCopyWith<$Res> get userState;
  $AnnouncementStateCopyWith<$Res> get announcementState;
  $CommonStateCopyWith<$Res> get commonState;
  $ScheduleStateCopyWith<$Res> get scheduleState;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? settingsState = freezed,
    Object? userState = freezed,
    Object? announcementState = freezed,
    Object? commonState = freezed,
    Object? scheduleState = freezed,
  }) {
    return _then(_value.copyWith(
      settingsState: settingsState == freezed
          ? _value.settingsState
          : settingsState // ignore: cast_nullable_to_non_nullable
              as SettingsState,
      userState: userState == freezed
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as UserState,
      announcementState: announcementState == freezed
          ? _value.announcementState
          : announcementState // ignore: cast_nullable_to_non_nullable
              as AnnouncementState,
      commonState: commonState == freezed
          ? _value.commonState
          : commonState // ignore: cast_nullable_to_non_nullable
              as CommonState,
      scheduleState: scheduleState == freezed
          ? _value.scheduleState
          : scheduleState // ignore: cast_nullable_to_non_nullable
              as ScheduleState,
    ));
  }

  @override
  $SettingsStateCopyWith<$Res> get settingsState {
    return $SettingsStateCopyWith<$Res>(_value.settingsState, (value) {
      return _then(_value.copyWith(settingsState: value));
    });
  }

  @override
  $UserStateCopyWith<$Res> get userState {
    return $UserStateCopyWith<$Res>(_value.userState, (value) {
      return _then(_value.copyWith(userState: value));
    });
  }

  @override
  $AnnouncementStateCopyWith<$Res> get announcementState {
    return $AnnouncementStateCopyWith<$Res>(_value.announcementState, (value) {
      return _then(_value.copyWith(announcementState: value));
    });
  }

  @override
  $CommonStateCopyWith<$Res> get commonState {
    return $CommonStateCopyWith<$Res>(_value.commonState, (value) {
      return _then(_value.copyWith(commonState: value));
    });
  }

  @override
  $ScheduleStateCopyWith<$Res> get scheduleState {
    return $ScheduleStateCopyWith<$Res>(_value.scheduleState, (value) {
      return _then(_value.copyWith(scheduleState: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) = __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'settings_state') SettingsState settingsState,
      @JsonKey(name: 'user_state') UserState userState,
      @JsonKey(name: 'announcement_state') AnnouncementState announcementState,
      @JsonKey(name: 'common_state') CommonState commonState,
      @JsonKey(name: 'schedule_state') ScheduleState scheduleState});

  @override
  $SettingsStateCopyWith<$Res> get settingsState;
  @override
  $UserStateCopyWith<$Res> get userState;
  @override
  $AnnouncementStateCopyWith<$Res> get announcementState;
  @override
  $CommonStateCopyWith<$Res> get commonState;
  @override
  $ScheduleStateCopyWith<$Res> get scheduleState;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res> implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? settingsState = freezed,
    Object? userState = freezed,
    Object? announcementState = freezed,
    Object? commonState = freezed,
    Object? scheduleState = freezed,
  }) {
    return _then(_AppState(
      settingsState: settingsState == freezed
          ? _value.settingsState
          : settingsState // ignore: cast_nullable_to_non_nullable
              as SettingsState,
      userState: userState == freezed
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as UserState,
      announcementState: announcementState == freezed
          ? _value.announcementState
          : announcementState // ignore: cast_nullable_to_non_nullable
              as AnnouncementState,
      commonState: commonState == freezed
          ? _value.commonState
          : commonState // ignore: cast_nullable_to_non_nullable
              as CommonState,
      scheduleState: scheduleState == freezed
          ? _value.scheduleState
          : scheduleState // ignore: cast_nullable_to_non_nullable
              as ScheduleState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppState extends _AppState {
  const _$_AppState(
      {@JsonKey(name: 'settings_state') this.settingsState = const SettingsState(),
      @JsonKey(name: 'user_state') this.userState = const UserState(),
      @JsonKey(name: 'announcement_state') this.announcementState = const AnnouncementState(),
      @JsonKey(name: 'common_state') this.commonState = const CommonState(),
      @JsonKey(name: 'schedule_state') this.scheduleState = const ScheduleState()})
      : super._();

  factory _$_AppState.fromJson(Map<String, dynamic> json) => _$_$_AppStateFromJson(json);

  @override
  @JsonKey(name: 'settings_state')
  final SettingsState settingsState;
  @override
  @JsonKey(name: 'user_state')
  final UserState userState;
  @override
  @JsonKey(name: 'announcement_state')
  final AnnouncementState announcementState;
  @override
  @JsonKey(name: 'common_state')
  final CommonState commonState;
  @override
  @JsonKey(name: 'schedule_state')
  final ScheduleState scheduleState;

  @override
  String toString() {
    return 'AppState(settingsState: $settingsState, userState: $userState, announcementState: $announcementState, commonState: $commonState, scheduleState: $scheduleState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.settingsState, settingsState) ||
                const DeepCollectionEquality().equals(other.settingsState, settingsState)) &&
            (identical(other.userState, userState) ||
                const DeepCollectionEquality().equals(other.userState, userState)) &&
            (identical(other.announcementState, announcementState) ||
                const DeepCollectionEquality().equals(other.announcementState, announcementState)) &&
            (identical(other.commonState, commonState) ||
                const DeepCollectionEquality().equals(other.commonState, commonState)) &&
            (identical(other.scheduleState, scheduleState) ||
                const DeepCollectionEquality().equals(other.scheduleState, scheduleState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(settingsState) ^
      const DeepCollectionEquality().hash(userState) ^
      const DeepCollectionEquality().hash(announcementState) ^
      const DeepCollectionEquality().hash(commonState) ^
      const DeepCollectionEquality().hash(scheduleState);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith => __$AppStateCopyWithImpl<_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppStateToJson(this);
  }
}

abstract class _AppState extends AppState {
  const factory _AppState(
      {@JsonKey(name: 'settings_state') SettingsState settingsState,
      @JsonKey(name: 'user_state') UserState userState,
      @JsonKey(name: 'announcement_state') AnnouncementState announcementState,
      @JsonKey(name: 'common_state') CommonState commonState,
      @JsonKey(name: 'schedule_state') ScheduleState scheduleState}) = _$_AppState;
  const _AppState._() : super._();

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  @JsonKey(name: 'settings_state')
  SettingsState get settingsState => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_state')
  UserState get userState => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'announcement_state')
  AnnouncementState get announcementState => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'common_state')
  CommonState get commonState => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'schedule_state')
  ScheduleState get scheduleState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith => throw _privateConstructorUsedError;
}
