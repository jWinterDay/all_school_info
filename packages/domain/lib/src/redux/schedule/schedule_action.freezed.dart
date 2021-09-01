// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'schedule_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScheduleActionTearOff {
  const _$ScheduleActionTearOff();

  _Fetch fetch({required DateTime value}) {
    return _Fetch(
      value: value,
    );
  }

  _ChangeLoading changeLoading({required bool value}) {
    return _ChangeLoading(
      value: value,
    );
  }

  _ChangeFirstLoading changeFirstLoading({required bool value}) {
    return _ChangeFirstLoading(
      value: value,
    );
  }

  _SetLessonList setLessonList({required List<LessonModel> value}) {
    return _SetLessonList(
      value: value,
    );
  }
}

/// @nodoc
const $ScheduleAction = _$ScheduleActionTearOff();

/// @nodoc
mixin _$ScheduleAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) fetch,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(List<LessonModel> value) setLessonList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? fetch,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(List<LessonModel> value)? setLessonList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetLessonList value) setLessonList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetLessonList value)? setLessonList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleActionCopyWith<$Res> {
  factory $ScheduleActionCopyWith(ScheduleAction value, $Res Function(ScheduleAction) then) =
      _$ScheduleActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScheduleActionCopyWithImpl<$Res> implements $ScheduleActionCopyWith<$Res> {
  _$ScheduleActionCopyWithImpl(this._value, this._then);

  final ScheduleAction _value;
  // ignore: unused_field
  final $Res Function(ScheduleAction) _then;
}

/// @nodoc
abstract class _$FetchCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) = __$FetchCopyWithImpl<$Res>;
  $Res call({DateTime value});
}

/// @nodoc
class __$FetchCopyWithImpl<$Res> extends _$ScheduleActionCopyWithImpl<$Res> implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(_Fetch _value, $Res Function(_Fetch) _then) : super(_value, (v) => _then(v as _Fetch));

  @override
  _Fetch get _value => super._value as _Fetch;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Fetch(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch({required this.value});

  @override
  final DateTime value;

  @override
  String toString() {
    return 'ScheduleAction.fetch(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fetch &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$FetchCopyWith<_Fetch> get copyWith => __$FetchCopyWithImpl<_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) fetch,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(List<LessonModel> value) setLessonList,
  }) {
    return fetch(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? fetch,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(List<LessonModel> value)? setLessonList,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetLessonList value) setLessonList,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetLessonList value)? setLessonList,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements ScheduleAction {
  const factory _Fetch({required DateTime value}) = _$_Fetch;

  DateTime get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchCopyWith<_Fetch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeLoadingCopyWith<$Res> {
  factory _$ChangeLoadingCopyWith(_ChangeLoading value, $Res Function(_ChangeLoading) then) =
      __$ChangeLoadingCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$ChangeLoadingCopyWithImpl<$Res> extends _$ScheduleActionCopyWithImpl<$Res>
    implements _$ChangeLoadingCopyWith<$Res> {
  __$ChangeLoadingCopyWithImpl(_ChangeLoading _value, $Res Function(_ChangeLoading) _then)
      : super(_value, (v) => _then(v as _ChangeLoading));

  @override
  _ChangeLoading get _value => super._value as _ChangeLoading;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ChangeLoading(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeLoading implements _ChangeLoading {
  const _$_ChangeLoading({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'ScheduleAction.changeLoading(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeLoading &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ChangeLoadingCopyWith<_ChangeLoading> get copyWith =>
      __$ChangeLoadingCopyWithImpl<_ChangeLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) fetch,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(List<LessonModel> value) setLessonList,
  }) {
    return changeLoading(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? fetch,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(List<LessonModel> value)? setLessonList,
    required TResult orElse(),
  }) {
    if (changeLoading != null) {
      return changeLoading(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetLessonList value) setLessonList,
  }) {
    return changeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetLessonList value)? setLessonList,
    required TResult orElse(),
  }) {
    if (changeLoading != null) {
      return changeLoading(this);
    }
    return orElse();
  }
}

abstract class _ChangeLoading implements ScheduleAction {
  const factory _ChangeLoading({required bool value}) = _$_ChangeLoading;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeLoadingCopyWith<_ChangeLoading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeFirstLoadingCopyWith<$Res> {
  factory _$ChangeFirstLoadingCopyWith(_ChangeFirstLoading value, $Res Function(_ChangeFirstLoading) then) =
      __$ChangeFirstLoadingCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$ChangeFirstLoadingCopyWithImpl<$Res> extends _$ScheduleActionCopyWithImpl<$Res>
    implements _$ChangeFirstLoadingCopyWith<$Res> {
  __$ChangeFirstLoadingCopyWithImpl(_ChangeFirstLoading _value, $Res Function(_ChangeFirstLoading) _then)
      : super(_value, (v) => _then(v as _ChangeFirstLoading));

  @override
  _ChangeFirstLoading get _value => super._value as _ChangeFirstLoading;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ChangeFirstLoading(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeFirstLoading implements _ChangeFirstLoading {
  const _$_ChangeFirstLoading({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'ScheduleAction.changeFirstLoading(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeFirstLoading &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ChangeFirstLoadingCopyWith<_ChangeFirstLoading> get copyWith =>
      __$ChangeFirstLoadingCopyWithImpl<_ChangeFirstLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) fetch,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(List<LessonModel> value) setLessonList,
  }) {
    return changeFirstLoading(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? fetch,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(List<LessonModel> value)? setLessonList,
    required TResult orElse(),
  }) {
    if (changeFirstLoading != null) {
      return changeFirstLoading(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetLessonList value) setLessonList,
  }) {
    return changeFirstLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetLessonList value)? setLessonList,
    required TResult orElse(),
  }) {
    if (changeFirstLoading != null) {
      return changeFirstLoading(this);
    }
    return orElse();
  }
}

abstract class _ChangeFirstLoading implements ScheduleAction {
  const factory _ChangeFirstLoading({required bool value}) = _$_ChangeFirstLoading;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeFirstLoadingCopyWith<_ChangeFirstLoading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetLessonListCopyWith<$Res> {
  factory _$SetLessonListCopyWith(_SetLessonList value, $Res Function(_SetLessonList) then) =
      __$SetLessonListCopyWithImpl<$Res>;
  $Res call({List<LessonModel> value});
}

/// @nodoc
class __$SetLessonListCopyWithImpl<$Res> extends _$ScheduleActionCopyWithImpl<$Res>
    implements _$SetLessonListCopyWith<$Res> {
  __$SetLessonListCopyWithImpl(_SetLessonList _value, $Res Function(_SetLessonList) _then)
      : super(_value, (v) => _then(v as _SetLessonList));

  @override
  _SetLessonList get _value => super._value as _SetLessonList;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_SetLessonList(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<LessonModel>,
    ));
  }
}

/// @nodoc

class _$_SetLessonList implements _SetLessonList {
  const _$_SetLessonList({required this.value});

  @override
  final List<LessonModel> value;

  @override
  String toString() {
    return 'ScheduleAction.setLessonList(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetLessonList &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$SetLessonListCopyWith<_SetLessonList> get copyWith =>
      __$SetLessonListCopyWithImpl<_SetLessonList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) fetch,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(List<LessonModel> value) setLessonList,
  }) {
    return setLessonList(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? fetch,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(List<LessonModel> value)? setLessonList,
    required TResult orElse(),
  }) {
    if (setLessonList != null) {
      return setLessonList(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetLessonList value) setLessonList,
  }) {
    return setLessonList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetLessonList value)? setLessonList,
    required TResult orElse(),
  }) {
    if (setLessonList != null) {
      return setLessonList(this);
    }
    return orElse();
  }
}

abstract class _SetLessonList implements ScheduleAction {
  const factory _SetLessonList({required List<LessonModel> value}) = _$_SetLessonList;

  List<LessonModel> get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetLessonListCopyWith<_SetLessonList> get copyWith => throw _privateConstructorUsedError;
}
