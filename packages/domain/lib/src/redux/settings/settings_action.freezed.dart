// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'settings_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsActionTearOff {
  const _$SettingsActionTearOff();

  _ChangeTestMode changeTestMode({required bool value}) {
    return _ChangeTestMode(
      value: value,
    );
  }

  _ChangeFontScale changeFontScale({required double value}) {
    return _ChangeFontScale(
      value: value,
    );
  }
}

/// @nodoc
const $SettingsAction = _$SettingsActionTearOff();

/// @nodoc
mixin _$SettingsAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeTestMode,
    required TResult Function(double value) changeFontScale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeTestMode,
    TResult Function(double value)? changeFontScale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTestMode value) changeTestMode,
    required TResult Function(_ChangeFontScale value) changeFontScale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTestMode value)? changeTestMode,
    TResult Function(_ChangeFontScale value)? changeFontScale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsActionCopyWith<$Res> {
  factory $SettingsActionCopyWith(SettingsAction value, $Res Function(SettingsAction) then) =
      _$SettingsActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsActionCopyWithImpl<$Res> implements $SettingsActionCopyWith<$Res> {
  _$SettingsActionCopyWithImpl(this._value, this._then);

  final SettingsAction _value;
  // ignore: unused_field
  final $Res Function(SettingsAction) _then;
}

/// @nodoc
abstract class _$ChangeTestModeCopyWith<$Res> {
  factory _$ChangeTestModeCopyWith(_ChangeTestMode value, $Res Function(_ChangeTestMode) then) =
      __$ChangeTestModeCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$ChangeTestModeCopyWithImpl<$Res> extends _$SettingsActionCopyWithImpl<$Res>
    implements _$ChangeTestModeCopyWith<$Res> {
  __$ChangeTestModeCopyWithImpl(_ChangeTestMode _value, $Res Function(_ChangeTestMode) _then)
      : super(_value, (v) => _then(v as _ChangeTestMode));

  @override
  _ChangeTestMode get _value => super._value as _ChangeTestMode;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ChangeTestMode(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeTestMode implements _ChangeTestMode {
  const _$_ChangeTestMode({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'SettingsAction.changeTestMode(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeTestMode &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ChangeTestModeCopyWith<_ChangeTestMode> get copyWith =>
      __$ChangeTestModeCopyWithImpl<_ChangeTestMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeTestMode,
    required TResult Function(double value) changeFontScale,
  }) {
    return changeTestMode(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeTestMode,
    TResult Function(double value)? changeFontScale,
    required TResult orElse(),
  }) {
    if (changeTestMode != null) {
      return changeTestMode(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTestMode value) changeTestMode,
    required TResult Function(_ChangeFontScale value) changeFontScale,
  }) {
    return changeTestMode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTestMode value)? changeTestMode,
    TResult Function(_ChangeFontScale value)? changeFontScale,
    required TResult orElse(),
  }) {
    if (changeTestMode != null) {
      return changeTestMode(this);
    }
    return orElse();
  }
}

abstract class _ChangeTestMode implements SettingsAction {
  const factory _ChangeTestMode({required bool value}) = _$_ChangeTestMode;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeTestModeCopyWith<_ChangeTestMode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeFontScaleCopyWith<$Res> {
  factory _$ChangeFontScaleCopyWith(_ChangeFontScale value, $Res Function(_ChangeFontScale) then) =
      __$ChangeFontScaleCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class __$ChangeFontScaleCopyWithImpl<$Res> extends _$SettingsActionCopyWithImpl<$Res>
    implements _$ChangeFontScaleCopyWith<$Res> {
  __$ChangeFontScaleCopyWithImpl(_ChangeFontScale _value, $Res Function(_ChangeFontScale) _then)
      : super(_value, (v) => _then(v as _ChangeFontScale));

  @override
  _ChangeFontScale get _value => super._value as _ChangeFontScale;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ChangeFontScale(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ChangeFontScale implements _ChangeFontScale {
  const _$_ChangeFontScale({required this.value});

  @override
  final double value;

  @override
  String toString() {
    return 'SettingsAction.changeFontScale(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeFontScale &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ChangeFontScaleCopyWith<_ChangeFontScale> get copyWith =>
      __$ChangeFontScaleCopyWithImpl<_ChangeFontScale>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeTestMode,
    required TResult Function(double value) changeFontScale,
  }) {
    return changeFontScale(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeTestMode,
    TResult Function(double value)? changeFontScale,
    required TResult orElse(),
  }) {
    if (changeFontScale != null) {
      return changeFontScale(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTestMode value) changeTestMode,
    required TResult Function(_ChangeFontScale value) changeFontScale,
  }) {
    return changeFontScale(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTestMode value)? changeTestMode,
    TResult Function(_ChangeFontScale value)? changeFontScale,
    required TResult orElse(),
  }) {
    if (changeFontScale != null) {
      return changeFontScale(this);
    }
    return orElse();
  }
}

abstract class _ChangeFontScale implements SettingsAction {
  const factory _ChangeFontScale({required double value}) = _$_ChangeFontScale;

  double get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeFontScaleCopyWith<_ChangeFontScale> get copyWith => throw _privateConstructorUsedError;
}
