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

  _TopAnnouncementCount topAnnouncementCount({required int value}) {
    return _TopAnnouncementCount(
      value: value,
    );
  }
}

/// @nodoc
const $CommonAction = _$CommonActionTearOff();

/// @nodoc
mixin _$CommonAction {
  int get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) topAnnouncementCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? topAnnouncementCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopAnnouncementCount value) topAnnouncementCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopAnnouncementCount value)? topAnnouncementCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommonActionCopyWith<CommonAction> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonActionCopyWith<$Res> {
  factory $CommonActionCopyWith(CommonAction value, $Res Function(CommonAction) then) =
      _$CommonActionCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$CommonActionCopyWithImpl<$Res> implements $CommonActionCopyWith<$Res> {
  _$CommonActionCopyWithImpl(this._value, this._then);

  final CommonAction _value;
  // ignore: unused_field
  final $Res Function(CommonAction) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TopAnnouncementCountCopyWith<$Res> implements $CommonActionCopyWith<$Res> {
  factory _$TopAnnouncementCountCopyWith(_TopAnnouncementCount value, $Res Function(_TopAnnouncementCount) then) =
      __$TopAnnouncementCountCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class __$TopAnnouncementCountCopyWithImpl<$Res> extends _$CommonActionCopyWithImpl<$Res>
    implements _$TopAnnouncementCountCopyWith<$Res> {
  __$TopAnnouncementCountCopyWithImpl(_TopAnnouncementCount _value, $Res Function(_TopAnnouncementCount) _then)
      : super(_value, (v) => _then(v as _TopAnnouncementCount));

  @override
  _TopAnnouncementCount get _value => super._value as _TopAnnouncementCount;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_TopAnnouncementCount(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TopAnnouncementCount implements _TopAnnouncementCount {
  const _$_TopAnnouncementCount({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'CommonAction.topAnnouncementCount(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TopAnnouncementCount &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$TopAnnouncementCountCopyWith<_TopAnnouncementCount> get copyWith =>
      __$TopAnnouncementCountCopyWithImpl<_TopAnnouncementCount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) topAnnouncementCount,
  }) {
    return topAnnouncementCount(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? topAnnouncementCount,
    required TResult orElse(),
  }) {
    if (topAnnouncementCount != null) {
      return topAnnouncementCount(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopAnnouncementCount value) topAnnouncementCount,
  }) {
    return topAnnouncementCount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopAnnouncementCount value)? topAnnouncementCount,
    required TResult orElse(),
  }) {
    if (topAnnouncementCount != null) {
      return topAnnouncementCount(this);
    }
    return orElse();
  }
}

abstract class _TopAnnouncementCount implements CommonAction {
  const factory _TopAnnouncementCount({required int value}) = _$_TopAnnouncementCount;

  @override
  int get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TopAnnouncementCountCopyWith<_TopAnnouncementCount> get copyWith => throw _privateConstructorUsedError;
}
