// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'common_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommonActionTearOff {
  const _$CommonActionTearOff();

  _SetErrorModel setErrorModel({required ErrorModel value}) {
    return _SetErrorModel(
      value: value,
    );
  }

  _ClearErrorModel clearErrorModel() {
    return const _ClearErrorModel();
  }
}

/// @nodoc
const $CommonAction = _$CommonActionTearOff();

/// @nodoc
mixin _$CommonAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonActionCopyWith<$Res> {
  factory $CommonActionCopyWith(CommonAction value, $Res Function(CommonAction) then) =
      _$CommonActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommonActionCopyWithImpl<$Res> implements $CommonActionCopyWith<$Res> {
  _$CommonActionCopyWithImpl(this._value, this._then);

  final CommonAction _value;
  // ignore: unused_field
  final $Res Function(CommonAction) _then;
}

/// @nodoc
abstract class _$SetErrorModelCopyWith<$Res> {
  factory _$SetErrorModelCopyWith(_SetErrorModel value, $Res Function(_SetErrorModel) then) =
      __$SetErrorModelCopyWithImpl<$Res>;
  $Res call({ErrorModel value});

  $ErrorModelCopyWith<$Res> get value;
}

/// @nodoc
class __$SetErrorModelCopyWithImpl<$Res> extends _$CommonActionCopyWithImpl<$Res>
    implements _$SetErrorModelCopyWith<$Res> {
  __$SetErrorModelCopyWithImpl(_SetErrorModel _value, $Res Function(_SetErrorModel) _then)
      : super(_value, (v) => _then(v as _SetErrorModel));

  @override
  _SetErrorModel get _value => super._value as _SetErrorModel;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_SetErrorModel(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }

  @override
  $ErrorModelCopyWith<$Res> get value {
    return $ErrorModelCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$_SetErrorModel implements _SetErrorModel {
  const _$_SetErrorModel({required this.value});

  @override
  final ErrorModel value;

  @override
  String toString() {
    return 'CommonAction.setErrorModel(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetErrorModel &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$SetErrorModelCopyWith<_SetErrorModel> get copyWith =>
      __$SetErrorModelCopyWithImpl<_SetErrorModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
  }) {
    return setErrorModel(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    required TResult orElse(),
  }) {
    if (setErrorModel != null) {
      return setErrorModel(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
  }) {
    return setErrorModel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    required TResult orElse(),
  }) {
    if (setErrorModel != null) {
      return setErrorModel(this);
    }
    return orElse();
  }
}

abstract class _SetErrorModel implements CommonAction {
  const factory _SetErrorModel({required ErrorModel value}) = _$_SetErrorModel;

  ErrorModel get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetErrorModelCopyWith<_SetErrorModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearErrorModelCopyWith<$Res> {
  factory _$ClearErrorModelCopyWith(_ClearErrorModel value, $Res Function(_ClearErrorModel) then) =
      __$ClearErrorModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearErrorModelCopyWithImpl<$Res> extends _$CommonActionCopyWithImpl<$Res>
    implements _$ClearErrorModelCopyWith<$Res> {
  __$ClearErrorModelCopyWithImpl(_ClearErrorModel _value, $Res Function(_ClearErrorModel) _then)
      : super(_value, (v) => _then(v as _ClearErrorModel));

  @override
  _ClearErrorModel get _value => super._value as _ClearErrorModel;
}

/// @nodoc

class _$_ClearErrorModel implements _ClearErrorModel {
  const _$_ClearErrorModel();

  @override
  String toString() {
    return 'CommonAction.clearErrorModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClearErrorModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
  }) {
    return clearErrorModel();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    required TResult orElse(),
  }) {
    if (clearErrorModel != null) {
      return clearErrorModel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
  }) {
    return clearErrorModel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    required TResult orElse(),
  }) {
    if (clearErrorModel != null) {
      return clearErrorModel(this);
    }
    return orElse();
  }
}

abstract class _ClearErrorModel implements CommonAction {
  const factory _ClearErrorModel() = _$_ClearErrorModel;
}
