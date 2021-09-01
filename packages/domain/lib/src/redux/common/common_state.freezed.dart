// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'common_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonState _$CommonStateFromJson(Map<String, dynamic> json) {
  return _CommonState.fromJson(json);
}

/// @nodoc
class _$CommonStateTearOff {
  const _$CommonStateTearOff();

  _CommonState call(
      {@JsonKey(name: 'top_announcement_count', defaultValue: 5) int topAnnouncementCount = 5,
      @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none) AppLifecycle appLifecycle = AppLifecycle.none}) {
    return _CommonState(
      topAnnouncementCount: topAnnouncementCount,
      appLifecycle: appLifecycle,
    );
  }

  CommonState fromJson(Map<String, Object> json) {
    return CommonState.fromJson(json);
  }
}

/// @nodoc
const $CommonState = _$CommonStateTearOff();

/// @nodoc
mixin _$CommonState {
  @JsonKey(name: 'top_announcement_count', defaultValue: 5)
  int get topAnnouncementCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none)
  AppLifecycle get appLifecycle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonStateCopyWith<CommonState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateCopyWith<$Res> {
  factory $CommonStateCopyWith(CommonState value, $Res Function(CommonState) then) = _$CommonStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'top_announcement_count', defaultValue: 5) int topAnnouncementCount,
      @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none) AppLifecycle appLifecycle});
}

/// @nodoc
class _$CommonStateCopyWithImpl<$Res> implements $CommonStateCopyWith<$Res> {
  _$CommonStateCopyWithImpl(this._value, this._then);

  final CommonState _value;
  // ignore: unused_field
  final $Res Function(CommonState) _then;

  @override
  $Res call({
    Object? topAnnouncementCount = freezed,
    Object? appLifecycle = freezed,
  }) {
    return _then(_value.copyWith(
      topAnnouncementCount: topAnnouncementCount == freezed
          ? _value.topAnnouncementCount
          : topAnnouncementCount // ignore: cast_nullable_to_non_nullable
              as int,
      appLifecycle: appLifecycle == freezed
          ? _value.appLifecycle
          : appLifecycle // ignore: cast_nullable_to_non_nullable
              as AppLifecycle,
    ));
  }
}

/// @nodoc
abstract class _$CommonStateCopyWith<$Res> implements $CommonStateCopyWith<$Res> {
  factory _$CommonStateCopyWith(_CommonState value, $Res Function(_CommonState) then) =
      __$CommonStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'top_announcement_count', defaultValue: 5) int topAnnouncementCount,
      @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none) AppLifecycle appLifecycle});
}

/// @nodoc
class __$CommonStateCopyWithImpl<$Res> extends _$CommonStateCopyWithImpl<$Res> implements _$CommonStateCopyWith<$Res> {
  __$CommonStateCopyWithImpl(_CommonState _value, $Res Function(_CommonState) _then)
      : super(_value, (v) => _then(v as _CommonState));

  @override
  _CommonState get _value => super._value as _CommonState;

  @override
  $Res call({
    Object? topAnnouncementCount = freezed,
    Object? appLifecycle = freezed,
  }) {
    return _then(_CommonState(
      topAnnouncementCount: topAnnouncementCount == freezed
          ? _value.topAnnouncementCount
          : topAnnouncementCount // ignore: cast_nullable_to_non_nullable
              as int,
      appLifecycle: appLifecycle == freezed
          ? _value.appLifecycle
          : appLifecycle // ignore: cast_nullable_to_non_nullable
              as AppLifecycle,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonState extends _CommonState {
  const _$_CommonState(
      {@JsonKey(name: 'top_announcement_count', defaultValue: 5) this.topAnnouncementCount = 5,
      @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none) this.appLifecycle = AppLifecycle.none})
      : super._();

  factory _$_CommonState.fromJson(Map<String, dynamic> json) => _$_$_CommonStateFromJson(json);

  @override
  @JsonKey(name: 'top_announcement_count', defaultValue: 5)
  final int topAnnouncementCount;
  @override
  @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none)
  final AppLifecycle appLifecycle;

  @override
  String toString() {
    return 'CommonState(topAnnouncementCount: $topAnnouncementCount, appLifecycle: $appLifecycle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommonState &&
            (identical(other.topAnnouncementCount, topAnnouncementCount) ||
                const DeepCollectionEquality().equals(other.topAnnouncementCount, topAnnouncementCount)) &&
            (identical(other.appLifecycle, appLifecycle) ||
                const DeepCollectionEquality().equals(other.appLifecycle, appLifecycle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(topAnnouncementCount) ^
      const DeepCollectionEquality().hash(appLifecycle);

  @JsonKey(ignore: true)
  @override
  _$CommonStateCopyWith<_CommonState> get copyWith => __$CommonStateCopyWithImpl<_CommonState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommonStateToJson(this);
  }
}

abstract class _CommonState extends CommonState {
  const factory _CommonState(
      {@JsonKey(name: 'top_announcement_count', defaultValue: 5) int topAnnouncementCount,
      @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none) AppLifecycle appLifecycle}) = _$_CommonState;
  const _CommonState._() : super._();

  factory _CommonState.fromJson(Map<String, dynamic> json) = _$_CommonState.fromJson;

  @override
  @JsonKey(name: 'top_announcement_count', defaultValue: 5)
  int get topAnnouncementCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none)
  AppLifecycle get appLifecycle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommonStateCopyWith<_CommonState> get copyWith => throw _privateConstructorUsedError;
}
