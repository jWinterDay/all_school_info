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

  _HaveScheduleUpd changeHaveScheduleUpd({required bool value}) {
    return _HaveScheduleUpd(
      value: value,
    );
  }

  _HaveLastNotificationsUpd changeHaveLastNotificationsUpd({required bool value}) {
    return _HaveLastNotificationsUpd(
      value: value,
    );
  }

  _HaveRatingsUpd changehaveRatingsUpd({required bool value}) {
    return _HaveRatingsUpd(
      value: value,
    );
  }

  _HaveNewsUpd changehaveNewsUpd({required bool value}) {
    return _HaveNewsUpd(
      value: value,
    );
  }

  _HaveHomeworkUpd changehaveHomeworkUpd({required bool value}) {
    return _HaveHomeworkUpd(
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
    required TResult Function(bool value) changeHaveScheduleUpd,
    required TResult Function(bool value) changeHaveLastNotificationsUpd,
    required TResult Function(bool value) changehaveRatingsUpd,
    required TResult Function(bool value) changehaveNewsUpd,
    required TResult Function(bool value) changehaveHomeworkUpd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? fetch,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(List<LessonModel> value)? setLessonList,
    TResult Function(bool value)? changeHaveScheduleUpd,
    TResult Function(bool value)? changeHaveLastNotificationsUpd,
    TResult Function(bool value)? changehaveRatingsUpd,
    TResult Function(bool value)? changehaveNewsUpd,
    TResult Function(bool value)? changehaveHomeworkUpd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetLessonList value) setLessonList,
    required TResult Function(_HaveScheduleUpd value) changeHaveScheduleUpd,
    required TResult Function(_HaveLastNotificationsUpd value) changeHaveLastNotificationsUpd,
    required TResult Function(_HaveRatingsUpd value) changehaveRatingsUpd,
    required TResult Function(_HaveNewsUpd value) changehaveNewsUpd,
    required TResult Function(_HaveHomeworkUpd value) changehaveHomeworkUpd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetLessonList value)? setLessonList,
    TResult Function(_HaveScheduleUpd value)? changeHaveScheduleUpd,
    TResult Function(_HaveLastNotificationsUpd value)? changeHaveLastNotificationsUpd,
    TResult Function(_HaveRatingsUpd value)? changehaveRatingsUpd,
    TResult Function(_HaveNewsUpd value)? changehaveNewsUpd,
    TResult Function(_HaveHomeworkUpd value)? changehaveHomeworkUpd,
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
    required TResult Function(bool value) changeHaveScheduleUpd,
    required TResult Function(bool value) changeHaveLastNotificationsUpd,
    required TResult Function(bool value) changehaveRatingsUpd,
    required TResult Function(bool value) changehaveNewsUpd,
    required TResult Function(bool value) changehaveHomeworkUpd,
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
    TResult Function(bool value)? changeHaveScheduleUpd,
    TResult Function(bool value)? changeHaveLastNotificationsUpd,
    TResult Function(bool value)? changehaveRatingsUpd,
    TResult Function(bool value)? changehaveNewsUpd,
    TResult Function(bool value)? changehaveHomeworkUpd,
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
    required TResult Function(_HaveScheduleUpd value) changeHaveScheduleUpd,
    required TResult Function(_HaveLastNotificationsUpd value) changeHaveLastNotificationsUpd,
    required TResult Function(_HaveRatingsUpd value) changehaveRatingsUpd,
    required TResult Function(_HaveNewsUpd value) changehaveNewsUpd,
    required TResult Function(_HaveHomeworkUpd value) changehaveHomeworkUpd,
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
    TResult Function(_HaveScheduleUpd value)? changeHaveScheduleUpd,
    TResult Function(_HaveLastNotificationsUpd value)? changeHaveLastNotificationsUpd,
    TResult Function(_HaveRatingsUpd value)? changehaveRatingsUpd,
    TResult Function(_HaveNewsUpd value)? changehaveNewsUpd,
    TResult Function(_HaveHomeworkUpd value)? changehaveHomeworkUpd,
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
    required TResult Function(bool value) changeHaveScheduleUpd,
    required TResult Function(bool value) changeHaveLastNotificationsUpd,
    required TResult Function(bool value) changehaveRatingsUpd,
    required TResult Function(bool value) changehaveNewsUpd,
    required TResult Function(bool value) changehaveHomeworkUpd,
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
    TResult Function(bool value)? changeHaveScheduleUpd,
    TResult Function(bool value)? changeHaveLastNotificationsUpd,
    TResult Function(bool value)? changehaveRatingsUpd,
    TResult Function(bool value)? changehaveNewsUpd,
    TResult Function(bool value)? changehaveHomeworkUpd,
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
    required TResult Function(_HaveScheduleUpd value) changeHaveScheduleUpd,
    required TResult Function(_HaveLastNotificationsUpd value) changeHaveLastNotificationsUpd,
    required TResult Function(_HaveRatingsUpd value) changehaveRatingsUpd,
    required TResult Function(_HaveNewsUpd value) changehaveNewsUpd,
    required TResult Function(_HaveHomeworkUpd value) changehaveHomeworkUpd,
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
    TResult Function(_HaveScheduleUpd value)? changeHaveScheduleUpd,
    TResult Function(_HaveLastNotificationsUpd value)? changeHaveLastNotificationsUpd,
    TResult Function(_HaveRatingsUpd value)? changehaveRatingsUpd,
    TResult Function(_HaveNewsUpd value)? changehaveNewsUpd,
    TResult Function(_HaveHomeworkUpd value)? changehaveHomeworkUpd,
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
    required TResult Function(bool value) changeHaveScheduleUpd,
    required TResult Function(bool value) changeHaveLastNotificationsUpd,
    required TResult Function(bool value) changehaveRatingsUpd,
    required TResult Function(bool value) changehaveNewsUpd,
    required TResult Function(bool value) changehaveHomeworkUpd,
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
    TResult Function(bool value)? changeHaveScheduleUpd,
    TResult Function(bool value)? changeHaveLastNotificationsUpd,
    TResult Function(bool value)? changehaveRatingsUpd,
    TResult Function(bool value)? changehaveNewsUpd,
    TResult Function(bool value)? changehaveHomeworkUpd,
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
    required TResult Function(_HaveScheduleUpd value) changeHaveScheduleUpd,
    required TResult Function(_HaveLastNotificationsUpd value) changeHaveLastNotificationsUpd,
    required TResult Function(_HaveRatingsUpd value) changehaveRatingsUpd,
    required TResult Function(_HaveNewsUpd value) changehaveNewsUpd,
    required TResult Function(_HaveHomeworkUpd value) changehaveHomeworkUpd,
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
    TResult Function(_HaveScheduleUpd value)? changeHaveScheduleUpd,
    TResult Function(_HaveLastNotificationsUpd value)? changeHaveLastNotificationsUpd,
    TResult Function(_HaveRatingsUpd value)? changehaveRatingsUpd,
    TResult Function(_HaveNewsUpd value)? changehaveNewsUpd,
    TResult Function(_HaveHomeworkUpd value)? changehaveHomeworkUpd,
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
    required TResult Function(bool value) changeHaveScheduleUpd,
    required TResult Function(bool value) changeHaveLastNotificationsUpd,
    required TResult Function(bool value) changehaveRatingsUpd,
    required TResult Function(bool value) changehaveNewsUpd,
    required TResult Function(bool value) changehaveHomeworkUpd,
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
    TResult Function(bool value)? changeHaveScheduleUpd,
    TResult Function(bool value)? changeHaveLastNotificationsUpd,
    TResult Function(bool value)? changehaveRatingsUpd,
    TResult Function(bool value)? changehaveNewsUpd,
    TResult Function(bool value)? changehaveHomeworkUpd,
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
    required TResult Function(_HaveScheduleUpd value) changeHaveScheduleUpd,
    required TResult Function(_HaveLastNotificationsUpd value) changeHaveLastNotificationsUpd,
    required TResult Function(_HaveRatingsUpd value) changehaveRatingsUpd,
    required TResult Function(_HaveNewsUpd value) changehaveNewsUpd,
    required TResult Function(_HaveHomeworkUpd value) changehaveHomeworkUpd,
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
    TResult Function(_HaveScheduleUpd value)? changeHaveScheduleUpd,
    TResult Function(_HaveLastNotificationsUpd value)? changeHaveLastNotificationsUpd,
    TResult Function(_HaveRatingsUpd value)? changehaveRatingsUpd,
    TResult Function(_HaveNewsUpd value)? changehaveNewsUpd,
    TResult Function(_HaveHomeworkUpd value)? changehaveHomeworkUpd,
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

/// @nodoc
abstract class _$HaveScheduleUpdCopyWith<$Res> {
  factory _$HaveScheduleUpdCopyWith(_HaveScheduleUpd value, $Res Function(_HaveScheduleUpd) then) =
      __$HaveScheduleUpdCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$HaveScheduleUpdCopyWithImpl<$Res> extends _$ScheduleActionCopyWithImpl<$Res>
    implements _$HaveScheduleUpdCopyWith<$Res> {
  __$HaveScheduleUpdCopyWithImpl(_HaveScheduleUpd _value, $Res Function(_HaveScheduleUpd) _then)
      : super(_value, (v) => _then(v as _HaveScheduleUpd));

  @override
  _HaveScheduleUpd get _value => super._value as _HaveScheduleUpd;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_HaveScheduleUpd(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HaveScheduleUpd implements _HaveScheduleUpd {
  const _$_HaveScheduleUpd({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'ScheduleAction.changeHaveScheduleUpd(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HaveScheduleUpd &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$HaveScheduleUpdCopyWith<_HaveScheduleUpd> get copyWith =>
      __$HaveScheduleUpdCopyWithImpl<_HaveScheduleUpd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) fetch,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(List<LessonModel> value) setLessonList,
    required TResult Function(bool value) changeHaveScheduleUpd,
    required TResult Function(bool value) changeHaveLastNotificationsUpd,
    required TResult Function(bool value) changehaveRatingsUpd,
    required TResult Function(bool value) changehaveNewsUpd,
    required TResult Function(bool value) changehaveHomeworkUpd,
  }) {
    return changeHaveScheduleUpd(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? fetch,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(List<LessonModel> value)? setLessonList,
    TResult Function(bool value)? changeHaveScheduleUpd,
    TResult Function(bool value)? changeHaveLastNotificationsUpd,
    TResult Function(bool value)? changehaveRatingsUpd,
    TResult Function(bool value)? changehaveNewsUpd,
    TResult Function(bool value)? changehaveHomeworkUpd,
    required TResult orElse(),
  }) {
    if (changeHaveScheduleUpd != null) {
      return changeHaveScheduleUpd(value);
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
    required TResult Function(_HaveScheduleUpd value) changeHaveScheduleUpd,
    required TResult Function(_HaveLastNotificationsUpd value) changeHaveLastNotificationsUpd,
    required TResult Function(_HaveRatingsUpd value) changehaveRatingsUpd,
    required TResult Function(_HaveNewsUpd value) changehaveNewsUpd,
    required TResult Function(_HaveHomeworkUpd value) changehaveHomeworkUpd,
  }) {
    return changeHaveScheduleUpd(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetLessonList value)? setLessonList,
    TResult Function(_HaveScheduleUpd value)? changeHaveScheduleUpd,
    TResult Function(_HaveLastNotificationsUpd value)? changeHaveLastNotificationsUpd,
    TResult Function(_HaveRatingsUpd value)? changehaveRatingsUpd,
    TResult Function(_HaveNewsUpd value)? changehaveNewsUpd,
    TResult Function(_HaveHomeworkUpd value)? changehaveHomeworkUpd,
    required TResult orElse(),
  }) {
    if (changeHaveScheduleUpd != null) {
      return changeHaveScheduleUpd(this);
    }
    return orElse();
  }
}

abstract class _HaveScheduleUpd implements ScheduleAction {
  const factory _HaveScheduleUpd({required bool value}) = _$_HaveScheduleUpd;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HaveScheduleUpdCopyWith<_HaveScheduleUpd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HaveLastNotificationsUpdCopyWith<$Res> {
  factory _$HaveLastNotificationsUpdCopyWith(
          _HaveLastNotificationsUpd value, $Res Function(_HaveLastNotificationsUpd) then) =
      __$HaveLastNotificationsUpdCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$HaveLastNotificationsUpdCopyWithImpl<$Res> extends _$ScheduleActionCopyWithImpl<$Res>
    implements _$HaveLastNotificationsUpdCopyWith<$Res> {
  __$HaveLastNotificationsUpdCopyWithImpl(
      _HaveLastNotificationsUpd _value, $Res Function(_HaveLastNotificationsUpd) _then)
      : super(_value, (v) => _then(v as _HaveLastNotificationsUpd));

  @override
  _HaveLastNotificationsUpd get _value => super._value as _HaveLastNotificationsUpd;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_HaveLastNotificationsUpd(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HaveLastNotificationsUpd implements _HaveLastNotificationsUpd {
  const _$_HaveLastNotificationsUpd({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'ScheduleAction.changeHaveLastNotificationsUpd(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HaveLastNotificationsUpd &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$HaveLastNotificationsUpdCopyWith<_HaveLastNotificationsUpd> get copyWith =>
      __$HaveLastNotificationsUpdCopyWithImpl<_HaveLastNotificationsUpd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) fetch,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(List<LessonModel> value) setLessonList,
    required TResult Function(bool value) changeHaveScheduleUpd,
    required TResult Function(bool value) changeHaveLastNotificationsUpd,
    required TResult Function(bool value) changehaveRatingsUpd,
    required TResult Function(bool value) changehaveNewsUpd,
    required TResult Function(bool value) changehaveHomeworkUpd,
  }) {
    return changeHaveLastNotificationsUpd(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? fetch,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(List<LessonModel> value)? setLessonList,
    TResult Function(bool value)? changeHaveScheduleUpd,
    TResult Function(bool value)? changeHaveLastNotificationsUpd,
    TResult Function(bool value)? changehaveRatingsUpd,
    TResult Function(bool value)? changehaveNewsUpd,
    TResult Function(bool value)? changehaveHomeworkUpd,
    required TResult orElse(),
  }) {
    if (changeHaveLastNotificationsUpd != null) {
      return changeHaveLastNotificationsUpd(value);
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
    required TResult Function(_HaveScheduleUpd value) changeHaveScheduleUpd,
    required TResult Function(_HaveLastNotificationsUpd value) changeHaveLastNotificationsUpd,
    required TResult Function(_HaveRatingsUpd value) changehaveRatingsUpd,
    required TResult Function(_HaveNewsUpd value) changehaveNewsUpd,
    required TResult Function(_HaveHomeworkUpd value) changehaveHomeworkUpd,
  }) {
    return changeHaveLastNotificationsUpd(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetLessonList value)? setLessonList,
    TResult Function(_HaveScheduleUpd value)? changeHaveScheduleUpd,
    TResult Function(_HaveLastNotificationsUpd value)? changeHaveLastNotificationsUpd,
    TResult Function(_HaveRatingsUpd value)? changehaveRatingsUpd,
    TResult Function(_HaveNewsUpd value)? changehaveNewsUpd,
    TResult Function(_HaveHomeworkUpd value)? changehaveHomeworkUpd,
    required TResult orElse(),
  }) {
    if (changeHaveLastNotificationsUpd != null) {
      return changeHaveLastNotificationsUpd(this);
    }
    return orElse();
  }
}

abstract class _HaveLastNotificationsUpd implements ScheduleAction {
  const factory _HaveLastNotificationsUpd({required bool value}) = _$_HaveLastNotificationsUpd;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HaveLastNotificationsUpdCopyWith<_HaveLastNotificationsUpd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HaveRatingsUpdCopyWith<$Res> {
  factory _$HaveRatingsUpdCopyWith(_HaveRatingsUpd value, $Res Function(_HaveRatingsUpd) then) =
      __$HaveRatingsUpdCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$HaveRatingsUpdCopyWithImpl<$Res> extends _$ScheduleActionCopyWithImpl<$Res>
    implements _$HaveRatingsUpdCopyWith<$Res> {
  __$HaveRatingsUpdCopyWithImpl(_HaveRatingsUpd _value, $Res Function(_HaveRatingsUpd) _then)
      : super(_value, (v) => _then(v as _HaveRatingsUpd));

  @override
  _HaveRatingsUpd get _value => super._value as _HaveRatingsUpd;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_HaveRatingsUpd(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HaveRatingsUpd implements _HaveRatingsUpd {
  const _$_HaveRatingsUpd({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'ScheduleAction.changehaveRatingsUpd(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HaveRatingsUpd &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$HaveRatingsUpdCopyWith<_HaveRatingsUpd> get copyWith =>
      __$HaveRatingsUpdCopyWithImpl<_HaveRatingsUpd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) fetch,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(List<LessonModel> value) setLessonList,
    required TResult Function(bool value) changeHaveScheduleUpd,
    required TResult Function(bool value) changeHaveLastNotificationsUpd,
    required TResult Function(bool value) changehaveRatingsUpd,
    required TResult Function(bool value) changehaveNewsUpd,
    required TResult Function(bool value) changehaveHomeworkUpd,
  }) {
    return changehaveRatingsUpd(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? fetch,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(List<LessonModel> value)? setLessonList,
    TResult Function(bool value)? changeHaveScheduleUpd,
    TResult Function(bool value)? changeHaveLastNotificationsUpd,
    TResult Function(bool value)? changehaveRatingsUpd,
    TResult Function(bool value)? changehaveNewsUpd,
    TResult Function(bool value)? changehaveHomeworkUpd,
    required TResult orElse(),
  }) {
    if (changehaveRatingsUpd != null) {
      return changehaveRatingsUpd(value);
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
    required TResult Function(_HaveScheduleUpd value) changeHaveScheduleUpd,
    required TResult Function(_HaveLastNotificationsUpd value) changeHaveLastNotificationsUpd,
    required TResult Function(_HaveRatingsUpd value) changehaveRatingsUpd,
    required TResult Function(_HaveNewsUpd value) changehaveNewsUpd,
    required TResult Function(_HaveHomeworkUpd value) changehaveHomeworkUpd,
  }) {
    return changehaveRatingsUpd(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetLessonList value)? setLessonList,
    TResult Function(_HaveScheduleUpd value)? changeHaveScheduleUpd,
    TResult Function(_HaveLastNotificationsUpd value)? changeHaveLastNotificationsUpd,
    TResult Function(_HaveRatingsUpd value)? changehaveRatingsUpd,
    TResult Function(_HaveNewsUpd value)? changehaveNewsUpd,
    TResult Function(_HaveHomeworkUpd value)? changehaveHomeworkUpd,
    required TResult orElse(),
  }) {
    if (changehaveRatingsUpd != null) {
      return changehaveRatingsUpd(this);
    }
    return orElse();
  }
}

abstract class _HaveRatingsUpd implements ScheduleAction {
  const factory _HaveRatingsUpd({required bool value}) = _$_HaveRatingsUpd;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HaveRatingsUpdCopyWith<_HaveRatingsUpd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HaveNewsUpdCopyWith<$Res> {
  factory _$HaveNewsUpdCopyWith(_HaveNewsUpd value, $Res Function(_HaveNewsUpd) then) =
      __$HaveNewsUpdCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$HaveNewsUpdCopyWithImpl<$Res> extends _$ScheduleActionCopyWithImpl<$Res>
    implements _$HaveNewsUpdCopyWith<$Res> {
  __$HaveNewsUpdCopyWithImpl(_HaveNewsUpd _value, $Res Function(_HaveNewsUpd) _then)
      : super(_value, (v) => _then(v as _HaveNewsUpd));

  @override
  _HaveNewsUpd get _value => super._value as _HaveNewsUpd;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_HaveNewsUpd(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HaveNewsUpd implements _HaveNewsUpd {
  const _$_HaveNewsUpd({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'ScheduleAction.changehaveNewsUpd(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HaveNewsUpd &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$HaveNewsUpdCopyWith<_HaveNewsUpd> get copyWith => __$HaveNewsUpdCopyWithImpl<_HaveNewsUpd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) fetch,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(List<LessonModel> value) setLessonList,
    required TResult Function(bool value) changeHaveScheduleUpd,
    required TResult Function(bool value) changeHaveLastNotificationsUpd,
    required TResult Function(bool value) changehaveRatingsUpd,
    required TResult Function(bool value) changehaveNewsUpd,
    required TResult Function(bool value) changehaveHomeworkUpd,
  }) {
    return changehaveNewsUpd(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? fetch,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(List<LessonModel> value)? setLessonList,
    TResult Function(bool value)? changeHaveScheduleUpd,
    TResult Function(bool value)? changeHaveLastNotificationsUpd,
    TResult Function(bool value)? changehaveRatingsUpd,
    TResult Function(bool value)? changehaveNewsUpd,
    TResult Function(bool value)? changehaveHomeworkUpd,
    required TResult orElse(),
  }) {
    if (changehaveNewsUpd != null) {
      return changehaveNewsUpd(value);
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
    required TResult Function(_HaveScheduleUpd value) changeHaveScheduleUpd,
    required TResult Function(_HaveLastNotificationsUpd value) changeHaveLastNotificationsUpd,
    required TResult Function(_HaveRatingsUpd value) changehaveRatingsUpd,
    required TResult Function(_HaveNewsUpd value) changehaveNewsUpd,
    required TResult Function(_HaveHomeworkUpd value) changehaveHomeworkUpd,
  }) {
    return changehaveNewsUpd(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetLessonList value)? setLessonList,
    TResult Function(_HaveScheduleUpd value)? changeHaveScheduleUpd,
    TResult Function(_HaveLastNotificationsUpd value)? changeHaveLastNotificationsUpd,
    TResult Function(_HaveRatingsUpd value)? changehaveRatingsUpd,
    TResult Function(_HaveNewsUpd value)? changehaveNewsUpd,
    TResult Function(_HaveHomeworkUpd value)? changehaveHomeworkUpd,
    required TResult orElse(),
  }) {
    if (changehaveNewsUpd != null) {
      return changehaveNewsUpd(this);
    }
    return orElse();
  }
}

abstract class _HaveNewsUpd implements ScheduleAction {
  const factory _HaveNewsUpd({required bool value}) = _$_HaveNewsUpd;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HaveNewsUpdCopyWith<_HaveNewsUpd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HaveHomeworkUpdCopyWith<$Res> {
  factory _$HaveHomeworkUpdCopyWith(_HaveHomeworkUpd value, $Res Function(_HaveHomeworkUpd) then) =
      __$HaveHomeworkUpdCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$HaveHomeworkUpdCopyWithImpl<$Res> extends _$ScheduleActionCopyWithImpl<$Res>
    implements _$HaveHomeworkUpdCopyWith<$Res> {
  __$HaveHomeworkUpdCopyWithImpl(_HaveHomeworkUpd _value, $Res Function(_HaveHomeworkUpd) _then)
      : super(_value, (v) => _then(v as _HaveHomeworkUpd));

  @override
  _HaveHomeworkUpd get _value => super._value as _HaveHomeworkUpd;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_HaveHomeworkUpd(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HaveHomeworkUpd implements _HaveHomeworkUpd {
  const _$_HaveHomeworkUpd({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'ScheduleAction.changehaveHomeworkUpd(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HaveHomeworkUpd &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$HaveHomeworkUpdCopyWith<_HaveHomeworkUpd> get copyWith =>
      __$HaveHomeworkUpdCopyWithImpl<_HaveHomeworkUpd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime value) fetch,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(List<LessonModel> value) setLessonList,
    required TResult Function(bool value) changeHaveScheduleUpd,
    required TResult Function(bool value) changeHaveLastNotificationsUpd,
    required TResult Function(bool value) changehaveRatingsUpd,
    required TResult Function(bool value) changehaveNewsUpd,
    required TResult Function(bool value) changehaveHomeworkUpd,
  }) {
    return changehaveHomeworkUpd(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime value)? fetch,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(List<LessonModel> value)? setLessonList,
    TResult Function(bool value)? changeHaveScheduleUpd,
    TResult Function(bool value)? changeHaveLastNotificationsUpd,
    TResult Function(bool value)? changehaveRatingsUpd,
    TResult Function(bool value)? changehaveNewsUpd,
    TResult Function(bool value)? changehaveHomeworkUpd,
    required TResult orElse(),
  }) {
    if (changehaveHomeworkUpd != null) {
      return changehaveHomeworkUpd(value);
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
    required TResult Function(_HaveScheduleUpd value) changeHaveScheduleUpd,
    required TResult Function(_HaveLastNotificationsUpd value) changeHaveLastNotificationsUpd,
    required TResult Function(_HaveRatingsUpd value) changehaveRatingsUpd,
    required TResult Function(_HaveNewsUpd value) changehaveNewsUpd,
    required TResult Function(_HaveHomeworkUpd value) changehaveHomeworkUpd,
  }) {
    return changehaveHomeworkUpd(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetLessonList value)? setLessonList,
    TResult Function(_HaveScheduleUpd value)? changeHaveScheduleUpd,
    TResult Function(_HaveLastNotificationsUpd value)? changeHaveLastNotificationsUpd,
    TResult Function(_HaveRatingsUpd value)? changehaveRatingsUpd,
    TResult Function(_HaveNewsUpd value)? changehaveNewsUpd,
    TResult Function(_HaveHomeworkUpd value)? changehaveHomeworkUpd,
    required TResult orElse(),
  }) {
    if (changehaveHomeworkUpd != null) {
      return changehaveHomeworkUpd(this);
    }
    return orElse();
  }
}

abstract class _HaveHomeworkUpd implements ScheduleAction {
  const factory _HaveHomeworkUpd({required bool value}) = _$_HaveHomeworkUpd;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HaveHomeworkUpdCopyWith<_HaveHomeworkUpd> get copyWith => throw _privateConstructorUsedError;
}
