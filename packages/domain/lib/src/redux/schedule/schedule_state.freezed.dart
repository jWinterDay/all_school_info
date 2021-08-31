// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'schedule_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleState _$ScheduleStateFromJson(Map<String, dynamic> json) {
  return _ScheduleState.fromJson(json);
}

/// @nodoc
class _$ScheduleStateTearOff {
  const _$ScheduleStateTearOff();

  _ScheduleState call({@JsonKey(name: 'loading', defaultValue: false) bool loading = false}) {
    return _ScheduleState(
      loading: loading,
    );
  }

  ScheduleState fromJson(Map<String, Object> json) {
    return ScheduleState.fromJson(json);
  }
}

/// @nodoc
const $ScheduleState = _$ScheduleStateTearOff();

/// @nodoc
mixin _$ScheduleState {
  @JsonKey(name: 'loading', defaultValue: false)
  bool get loading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleStateCopyWith<ScheduleState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'loading', defaultValue: false) bool loading});
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res> implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  final ScheduleState _value;
  // ignore: unused_field
  final $Res Function(ScheduleState) _then;

  @override
  $Res call({
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ScheduleStateCopyWith<$Res> implements $ScheduleStateCopyWith<$Res> {
  factory _$ScheduleStateCopyWith(_ScheduleState value, $Res Function(_ScheduleState) then) =
      __$ScheduleStateCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'loading', defaultValue: false) bool loading});
}

/// @nodoc
class __$ScheduleStateCopyWithImpl<$Res> extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$ScheduleStateCopyWith<$Res> {
  __$ScheduleStateCopyWithImpl(_ScheduleState _value, $Res Function(_ScheduleState) _then)
      : super(_value, (v) => _then(v as _ScheduleState));

  @override
  _ScheduleState get _value => super._value as _ScheduleState;

  @override
  $Res call({
    Object? loading = freezed,
  }) {
    return _then(_ScheduleState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleState extends _ScheduleState {
  const _$_ScheduleState({@JsonKey(name: 'loading', defaultValue: false) this.loading = false}) : super._();

  factory _$_ScheduleState.fromJson(Map<String, dynamic> json) => _$_$_ScheduleStateFromJson(json);

  @override
  @JsonKey(name: 'loading', defaultValue: false)
  final bool loading;

  @override
  String toString() {
    return 'ScheduleState(loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScheduleState &&
            (identical(other.loading, loading) || const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$ScheduleStateCopyWith<_ScheduleState> get copyWith =>
      __$ScheduleStateCopyWithImpl<_ScheduleState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ScheduleStateToJson(this);
  }
}

abstract class _ScheduleState extends ScheduleState {
  const factory _ScheduleState({@JsonKey(name: 'loading', defaultValue: false) bool loading}) = _$_ScheduleState;
  const _ScheduleState._() : super._();

  factory _ScheduleState.fromJson(Map<String, dynamic> json) = _$_ScheduleState.fromJson;

  @override
  @JsonKey(name: 'loading', defaultValue: false)
  bool get loading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScheduleStateCopyWith<_ScheduleState> get copyWith => throw _privateConstructorUsedError;
}
