// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsState _$SettingsStateFromJson(Map<String, dynamic> json) {
  return _SettingsState.fromJson(json);
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _SettingsState call(
      {@JsonKey(name: 'test_mode', defaultValue: false) bool testMode = false,
      @JsonKey(name: 'font_scale', defaultValue: 1.0) double fontScale = 1.0}) {
    return _SettingsState(
      testMode: testMode,
      fontScale: fontScale,
    );
  }

  SettingsState fromJson(Map<String, Object> json) {
    return SettingsState.fromJson(json);
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  @JsonKey(name: 'test_mode', defaultValue: false)
  bool get testMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'font_scale', defaultValue: 1.0)
  double get fontScale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'test_mode', defaultValue: false) bool testMode,
      @JsonKey(name: 'font_scale', defaultValue: 1.0) double fontScale});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res> implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? testMode = freezed,
    Object? fontScale = freezed,
  }) {
    return _then(_value.copyWith(
      testMode: testMode == freezed
          ? _value.testMode
          : testMode // ignore: cast_nullable_to_non_nullable
              as bool,
      fontScale: fontScale == freezed
          ? _value.fontScale
          : fontScale // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'test_mode', defaultValue: false) bool testMode,
      @JsonKey(name: 'font_scale', defaultValue: 1.0) double fontScale});
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(_SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object? testMode = freezed,
    Object? fontScale = freezed,
  }) {
    return _then(_SettingsState(
      testMode: testMode == freezed
          ? _value.testMode
          : testMode // ignore: cast_nullable_to_non_nullable
              as bool,
      fontScale: fontScale == freezed
          ? _value.fontScale
          : fontScale // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingsState extends _SettingsState {
  const _$_SettingsState(
      {@JsonKey(name: 'test_mode', defaultValue: false) this.testMode = false,
      @JsonKey(name: 'font_scale', defaultValue: 1.0) this.fontScale = 1.0})
      : super._();

  factory _$_SettingsState.fromJson(Map<String, dynamic> json) => _$_$_SettingsStateFromJson(json);

  @override
  @JsonKey(name: 'test_mode', defaultValue: false)
  final bool testMode;
  @override
  @JsonKey(name: 'font_scale', defaultValue: 1.0)
  final double fontScale;

  @override
  String toString() {
    return 'SettingsState(testMode: $testMode, fontScale: $fontScale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsState &&
            (identical(other.testMode, testMode) || const DeepCollectionEquality().equals(other.testMode, testMode)) &&
            (identical(other.fontScale, fontScale) ||
                const DeepCollectionEquality().equals(other.fontScale, fontScale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(testMode) ^
      const DeepCollectionEquality().hash(fontScale);

  @JsonKey(ignore: true)
  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SettingsStateToJson(this);
  }
}

abstract class _SettingsState extends SettingsState {
  const factory _SettingsState(
      {@JsonKey(name: 'test_mode', defaultValue: false) bool testMode,
      @JsonKey(name: 'font_scale', defaultValue: 1.0) double fontScale}) = _$_SettingsState;
  const _SettingsState._() : super._();

  factory _SettingsState.fromJson(Map<String, dynamic> json) = _$_SettingsState.fromJson;

  @override
  @JsonKey(name: 'test_mode', defaultValue: false)
  bool get testMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'font_scale', defaultValue: 1.0)
  double get fontScale => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SettingsStateCopyWith<_SettingsState> get copyWith => throw _privateConstructorUsedError;
}
