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

  _ScheduleState call(
      {@JsonKey(name: 'loading', defaultValue: false) bool loading = false,
      @JsonKey(name: 'first_loading', defaultValue: true) bool firstLoading = true,
      @JsonKey(name: 'lesson_list', defaultValue: <LessonModel>[]) List<LessonModel> lessonList = const <LessonModel>[],
      @JsonKey(name: 'have_schedule_upd', defaultValue: false) bool haveScheduleUpd = false,
      @JsonKey(name: 'have_last_notifications_upd', defaultValue: false) bool haveLastNotificationsUpd = false,
      @JsonKey(name: 'have_ratings_upd', defaultValue: false) bool haveRatingsUpd = false,
      @JsonKey(name: 'have_news_upd', defaultValue: false) bool haveNewsUpd = false,
      @JsonKey(name: 'have_homework_upd', defaultValue: false) bool haveHomeworkUpd = false}) {
    return _ScheduleState(
      loading: loading,
      firstLoading: firstLoading,
      lessonList: lessonList,
      haveScheduleUpd: haveScheduleUpd,
      haveLastNotificationsUpd: haveLastNotificationsUpd,
      haveRatingsUpd: haveRatingsUpd,
      haveNewsUpd: haveNewsUpd,
      haveHomeworkUpd: haveHomeworkUpd,
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
  @JsonKey(name: 'first_loading', defaultValue: true)
  bool get firstLoading => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_list', defaultValue: <LessonModel>[])
  List<LessonModel> get lessonList => throw _privateConstructorUsedError; // TODO remove to subclass
  @JsonKey(name: 'have_schedule_upd', defaultValue: false)
  bool get haveScheduleUpd => throw _privateConstructorUsedError;
  @JsonKey(name: 'have_last_notifications_upd', defaultValue: false)
  bool get haveLastNotificationsUpd => throw _privateConstructorUsedError;
  @JsonKey(name: 'have_ratings_upd', defaultValue: false)
  bool get haveRatingsUpd => throw _privateConstructorUsedError;
  @JsonKey(name: 'have_news_upd', defaultValue: false)
  bool get haveNewsUpd => throw _privateConstructorUsedError;
  @JsonKey(name: 'have_homework_upd', defaultValue: false)
  bool get haveHomeworkUpd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleStateCopyWith<ScheduleState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'loading', defaultValue: false) bool loading,
      @JsonKey(name: 'first_loading', defaultValue: true) bool firstLoading,
      @JsonKey(name: 'lesson_list', defaultValue: <LessonModel>[]) List<LessonModel> lessonList,
      @JsonKey(name: 'have_schedule_upd', defaultValue: false) bool haveScheduleUpd,
      @JsonKey(name: 'have_last_notifications_upd', defaultValue: false) bool haveLastNotificationsUpd,
      @JsonKey(name: 'have_ratings_upd', defaultValue: false) bool haveRatingsUpd,
      @JsonKey(name: 'have_news_upd', defaultValue: false) bool haveNewsUpd,
      @JsonKey(name: 'have_homework_upd', defaultValue: false) bool haveHomeworkUpd});
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
    Object? firstLoading = freezed,
    Object? lessonList = freezed,
    Object? haveScheduleUpd = freezed,
    Object? haveLastNotificationsUpd = freezed,
    Object? haveRatingsUpd = freezed,
    Object? haveNewsUpd = freezed,
    Object? haveHomeworkUpd = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      firstLoading: firstLoading == freezed
          ? _value.firstLoading
          : firstLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lessonList: lessonList == freezed
          ? _value.lessonList
          : lessonList // ignore: cast_nullable_to_non_nullable
              as List<LessonModel>,
      haveScheduleUpd: haveScheduleUpd == freezed
          ? _value.haveScheduleUpd
          : haveScheduleUpd // ignore: cast_nullable_to_non_nullable
              as bool,
      haveLastNotificationsUpd: haveLastNotificationsUpd == freezed
          ? _value.haveLastNotificationsUpd
          : haveLastNotificationsUpd // ignore: cast_nullable_to_non_nullable
              as bool,
      haveRatingsUpd: haveRatingsUpd == freezed
          ? _value.haveRatingsUpd
          : haveRatingsUpd // ignore: cast_nullable_to_non_nullable
              as bool,
      haveNewsUpd: haveNewsUpd == freezed
          ? _value.haveNewsUpd
          : haveNewsUpd // ignore: cast_nullable_to_non_nullable
              as bool,
      haveHomeworkUpd: haveHomeworkUpd == freezed
          ? _value.haveHomeworkUpd
          : haveHomeworkUpd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ScheduleStateCopyWith<$Res> implements $ScheduleStateCopyWith<$Res> {
  factory _$ScheduleStateCopyWith(_ScheduleState value, $Res Function(_ScheduleState) then) =
      __$ScheduleStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'loading', defaultValue: false) bool loading,
      @JsonKey(name: 'first_loading', defaultValue: true) bool firstLoading,
      @JsonKey(name: 'lesson_list', defaultValue: <LessonModel>[]) List<LessonModel> lessonList,
      @JsonKey(name: 'have_schedule_upd', defaultValue: false) bool haveScheduleUpd,
      @JsonKey(name: 'have_last_notifications_upd', defaultValue: false) bool haveLastNotificationsUpd,
      @JsonKey(name: 'have_ratings_upd', defaultValue: false) bool haveRatingsUpd,
      @JsonKey(name: 'have_news_upd', defaultValue: false) bool haveNewsUpd,
      @JsonKey(name: 'have_homework_upd', defaultValue: false) bool haveHomeworkUpd});
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
    Object? firstLoading = freezed,
    Object? lessonList = freezed,
    Object? haveScheduleUpd = freezed,
    Object? haveLastNotificationsUpd = freezed,
    Object? haveRatingsUpd = freezed,
    Object? haveNewsUpd = freezed,
    Object? haveHomeworkUpd = freezed,
  }) {
    return _then(_ScheduleState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      firstLoading: firstLoading == freezed
          ? _value.firstLoading
          : firstLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lessonList: lessonList == freezed
          ? _value.lessonList
          : lessonList // ignore: cast_nullable_to_non_nullable
              as List<LessonModel>,
      haveScheduleUpd: haveScheduleUpd == freezed
          ? _value.haveScheduleUpd
          : haveScheduleUpd // ignore: cast_nullable_to_non_nullable
              as bool,
      haveLastNotificationsUpd: haveLastNotificationsUpd == freezed
          ? _value.haveLastNotificationsUpd
          : haveLastNotificationsUpd // ignore: cast_nullable_to_non_nullable
              as bool,
      haveRatingsUpd: haveRatingsUpd == freezed
          ? _value.haveRatingsUpd
          : haveRatingsUpd // ignore: cast_nullable_to_non_nullable
              as bool,
      haveNewsUpd: haveNewsUpd == freezed
          ? _value.haveNewsUpd
          : haveNewsUpd // ignore: cast_nullable_to_non_nullable
              as bool,
      haveHomeworkUpd: haveHomeworkUpd == freezed
          ? _value.haveHomeworkUpd
          : haveHomeworkUpd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleState extends _ScheduleState {
  const _$_ScheduleState(
      {@JsonKey(name: 'loading', defaultValue: false) this.loading = false,
      @JsonKey(name: 'first_loading', defaultValue: true) this.firstLoading = true,
      @JsonKey(name: 'lesson_list', defaultValue: <LessonModel>[]) this.lessonList = const <LessonModel>[],
      @JsonKey(name: 'have_schedule_upd', defaultValue: false) this.haveScheduleUpd = false,
      @JsonKey(name: 'have_last_notifications_upd', defaultValue: false) this.haveLastNotificationsUpd = false,
      @JsonKey(name: 'have_ratings_upd', defaultValue: false) this.haveRatingsUpd = false,
      @JsonKey(name: 'have_news_upd', defaultValue: false) this.haveNewsUpd = false,
      @JsonKey(name: 'have_homework_upd', defaultValue: false) this.haveHomeworkUpd = false})
      : super._();

  factory _$_ScheduleState.fromJson(Map<String, dynamic> json) => _$_$_ScheduleStateFromJson(json);

  @override
  @JsonKey(name: 'loading', defaultValue: false)
  final bool loading;
  @override
  @JsonKey(name: 'first_loading', defaultValue: true)
  final bool firstLoading;
  @override
  @JsonKey(name: 'lesson_list', defaultValue: <LessonModel>[])
  final List<LessonModel> lessonList;
  @override // TODO remove to subclass
  @JsonKey(name: 'have_schedule_upd', defaultValue: false)
  final bool haveScheduleUpd;
  @override
  @JsonKey(name: 'have_last_notifications_upd', defaultValue: false)
  final bool haveLastNotificationsUpd;
  @override
  @JsonKey(name: 'have_ratings_upd', defaultValue: false)
  final bool haveRatingsUpd;
  @override
  @JsonKey(name: 'have_news_upd', defaultValue: false)
  final bool haveNewsUpd;
  @override
  @JsonKey(name: 'have_homework_upd', defaultValue: false)
  final bool haveHomeworkUpd;

  @override
  String toString() {
    return 'ScheduleState(loading: $loading, firstLoading: $firstLoading, lessonList: $lessonList, haveScheduleUpd: $haveScheduleUpd, haveLastNotificationsUpd: $haveLastNotificationsUpd, haveRatingsUpd: $haveRatingsUpd, haveNewsUpd: $haveNewsUpd, haveHomeworkUpd: $haveHomeworkUpd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScheduleState &&
            (identical(other.loading, loading) || const DeepCollectionEquality().equals(other.loading, loading)) &&
            (identical(other.firstLoading, firstLoading) ||
                const DeepCollectionEquality().equals(other.firstLoading, firstLoading)) &&
            (identical(other.lessonList, lessonList) ||
                const DeepCollectionEquality().equals(other.lessonList, lessonList)) &&
            (identical(other.haveScheduleUpd, haveScheduleUpd) ||
                const DeepCollectionEquality().equals(other.haveScheduleUpd, haveScheduleUpd)) &&
            (identical(other.haveLastNotificationsUpd, haveLastNotificationsUpd) ||
                const DeepCollectionEquality().equals(other.haveLastNotificationsUpd, haveLastNotificationsUpd)) &&
            (identical(other.haveRatingsUpd, haveRatingsUpd) ||
                const DeepCollectionEquality().equals(other.haveRatingsUpd, haveRatingsUpd)) &&
            (identical(other.haveNewsUpd, haveNewsUpd) ||
                const DeepCollectionEquality().equals(other.haveNewsUpd, haveNewsUpd)) &&
            (identical(other.haveHomeworkUpd, haveHomeworkUpd) ||
                const DeepCollectionEquality().equals(other.haveHomeworkUpd, haveHomeworkUpd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(firstLoading) ^
      const DeepCollectionEquality().hash(lessonList) ^
      const DeepCollectionEquality().hash(haveScheduleUpd) ^
      const DeepCollectionEquality().hash(haveLastNotificationsUpd) ^
      const DeepCollectionEquality().hash(haveRatingsUpd) ^
      const DeepCollectionEquality().hash(haveNewsUpd) ^
      const DeepCollectionEquality().hash(haveHomeworkUpd);

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
  const factory _ScheduleState(
      {@JsonKey(name: 'loading', defaultValue: false) bool loading,
      @JsonKey(name: 'first_loading', defaultValue: true) bool firstLoading,
      @JsonKey(name: 'lesson_list', defaultValue: <LessonModel>[]) List<LessonModel> lessonList,
      @JsonKey(name: 'have_schedule_upd', defaultValue: false) bool haveScheduleUpd,
      @JsonKey(name: 'have_last_notifications_upd', defaultValue: false) bool haveLastNotificationsUpd,
      @JsonKey(name: 'have_ratings_upd', defaultValue: false) bool haveRatingsUpd,
      @JsonKey(name: 'have_news_upd', defaultValue: false) bool haveNewsUpd,
      @JsonKey(name: 'have_homework_upd', defaultValue: false) bool haveHomeworkUpd}) = _$_ScheduleState;
  const _ScheduleState._() : super._();

  factory _ScheduleState.fromJson(Map<String, dynamic> json) = _$_ScheduleState.fromJson;

  @override
  @JsonKey(name: 'loading', defaultValue: false)
  bool get loading => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'first_loading', defaultValue: true)
  bool get firstLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'lesson_list', defaultValue: <LessonModel>[])
  List<LessonModel> get lessonList => throw _privateConstructorUsedError;
  @override // TODO remove to subclass
  @JsonKey(name: 'have_schedule_upd', defaultValue: false)
  bool get haveScheduleUpd => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'have_last_notifications_upd', defaultValue: false)
  bool get haveLastNotificationsUpd => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'have_ratings_upd', defaultValue: false)
  bool get haveRatingsUpd => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'have_news_upd', defaultValue: false)
  bool get haveNewsUpd => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'have_homework_upd', defaultValue: false)
  bool get haveHomeworkUpd => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScheduleStateCopyWith<_ScheduleState> get copyWith => throw _privateConstructorUsedError;
}
