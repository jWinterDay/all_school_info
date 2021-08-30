// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) {
  return _ErrorModel.fromJson(json);
}

/// @nodoc
class _$ErrorModelTearOff {
  const _$ErrorModelTearOff();

  _ErrorModel call(@JsonKey(name: 'code') int code, @JsonKey(name: 'message') String message) {
    return _ErrorModel(
      code,
      message,
    );
  }

  ErrorModel fromJson(Map<String, Object> json) {
    return ErrorModel.fromJson(json);
  }
}

/// @nodoc
const $ErrorModel = _$ErrorModelTearOff();

/// @nodoc
mixin _$ErrorModel {
  @JsonKey(name: 'code')
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorModelCopyWith<ErrorModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorModelCopyWith<$Res> {
  factory $ErrorModelCopyWith(ErrorModel value, $Res Function(ErrorModel) then) = _$ErrorModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'code') int code, @JsonKey(name: 'message') String message});
}

/// @nodoc
class _$ErrorModelCopyWithImpl<$Res> implements $ErrorModelCopyWith<$Res> {
  _$ErrorModelCopyWithImpl(this._value, this._then);

  final ErrorModel _value;
  // ignore: unused_field
  final $Res Function(ErrorModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ErrorModelCopyWith<$Res> implements $ErrorModelCopyWith<$Res> {
  factory _$ErrorModelCopyWith(_ErrorModel value, $Res Function(_ErrorModel) then) = __$ErrorModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'code') int code, @JsonKey(name: 'message') String message});
}

/// @nodoc
class __$ErrorModelCopyWithImpl<$Res> extends _$ErrorModelCopyWithImpl<$Res> implements _$ErrorModelCopyWith<$Res> {
  __$ErrorModelCopyWithImpl(_ErrorModel _value, $Res Function(_ErrorModel) _then)
      : super(_value, (v) => _then(v as _ErrorModel));

  @override
  _ErrorModel get _value => super._value as _ErrorModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_ErrorModel(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorModel extends _ErrorModel {
  const _$_ErrorModel(@JsonKey(name: 'code') this.code, @JsonKey(name: 'message') this.message) : super._();

  factory _$_ErrorModel.fromJson(Map<String, dynamic> json) => _$_$_ErrorModelFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int code;
  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'ErrorModel(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorModel &&
            (identical(other.code, code) || const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) || const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code) ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorModelCopyWith<_ErrorModel> get copyWith => __$ErrorModelCopyWithImpl<_ErrorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ErrorModelToJson(this);
  }
}

abstract class _ErrorModel extends ErrorModel {
  const factory _ErrorModel(@JsonKey(name: 'code') int code, @JsonKey(name: 'message') String message) = _$_ErrorModel;
  const _ErrorModel._() : super._();

  factory _ErrorModel.fromJson(Map<String, dynamic> json) = _$_ErrorModel.fromJson;

  @override
  @JsonKey(name: 'code')
  int get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorModelCopyWith<_ErrorModel> get copyWith => throw _privateConstructorUsedError;
}
