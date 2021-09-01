// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LessonModel _$LessonModelFromJson(Map<String, dynamic> json) {
  return _LessonModel.fromJson(json);
}

/// @nodoc
class _$LessonModelTearOff {
  const _$LessonModelTearOff();

  _LessonModel call(@JsonKey(name: 'lesson_name') String lessonName, @JsonKey(name: 'date_unix_ms') int dateUnixMs,
      @JsonKey(name: 'teacher_name') String teacherName) {
    return _LessonModel(
      lessonName,
      dateUnixMs,
      teacherName,
    );
  }

  LessonModel fromJson(Map<String, Object> json) {
    return LessonModel.fromJson(json);
  }
}

/// @nodoc
const $LessonModel = _$LessonModelTearOff();

/// @nodoc
mixin _$LessonModel {
  @JsonKey(name: 'lesson_name')
  String get lessonName => throw _privateConstructorUsedError; // TODO guid ????
  @JsonKey(name: 'date_unix_ms')
  int get dateUnixMs => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_name')
  String get teacherName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonModelCopyWith<LessonModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonModelCopyWith<$Res> {
  factory $LessonModelCopyWith(LessonModel value, $Res Function(LessonModel) then) = _$LessonModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'lesson_name') String lessonName,
      @JsonKey(name: 'date_unix_ms') int dateUnixMs,
      @JsonKey(name: 'teacher_name') String teacherName});
}

/// @nodoc
class _$LessonModelCopyWithImpl<$Res> implements $LessonModelCopyWith<$Res> {
  _$LessonModelCopyWithImpl(this._value, this._then);

  final LessonModel _value;
  // ignore: unused_field
  final $Res Function(LessonModel) _then;

  @override
  $Res call({
    Object? lessonName = freezed,
    Object? dateUnixMs = freezed,
    Object? teacherName = freezed,
  }) {
    return _then(_value.copyWith(
      lessonName: lessonName == freezed
          ? _value.lessonName
          : lessonName // ignore: cast_nullable_to_non_nullable
              as String,
      dateUnixMs: dateUnixMs == freezed
          ? _value.dateUnixMs
          : dateUnixMs // ignore: cast_nullable_to_non_nullable
              as int,
      teacherName: teacherName == freezed
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LessonModelCopyWith<$Res> implements $LessonModelCopyWith<$Res> {
  factory _$LessonModelCopyWith(_LessonModel value, $Res Function(_LessonModel) then) =
      __$LessonModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'lesson_name') String lessonName,
      @JsonKey(name: 'date_unix_ms') int dateUnixMs,
      @JsonKey(name: 'teacher_name') String teacherName});
}

/// @nodoc
class __$LessonModelCopyWithImpl<$Res> extends _$LessonModelCopyWithImpl<$Res> implements _$LessonModelCopyWith<$Res> {
  __$LessonModelCopyWithImpl(_LessonModel _value, $Res Function(_LessonModel) _then)
      : super(_value, (v) => _then(v as _LessonModel));

  @override
  _LessonModel get _value => super._value as _LessonModel;

  @override
  $Res call({
    Object? lessonName = freezed,
    Object? dateUnixMs = freezed,
    Object? teacherName = freezed,
  }) {
    return _then(_LessonModel(
      lessonName == freezed
          ? _value.lessonName
          : lessonName // ignore: cast_nullable_to_non_nullable
              as String,
      dateUnixMs == freezed
          ? _value.dateUnixMs
          : dateUnixMs // ignore: cast_nullable_to_non_nullable
              as int,
      teacherName == freezed
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LessonModel extends _LessonModel {
  const _$_LessonModel(@JsonKey(name: 'lesson_name') this.lessonName, @JsonKey(name: 'date_unix_ms') this.dateUnixMs,
      @JsonKey(name: 'teacher_name') this.teacherName)
      : super._();

  factory _$_LessonModel.fromJson(Map<String, dynamic> json) => _$_$_LessonModelFromJson(json);

  @override
  @JsonKey(name: 'lesson_name')
  final String lessonName;
  @override // TODO guid ????
  @JsonKey(name: 'date_unix_ms')
  final int dateUnixMs;
  @override
  @JsonKey(name: 'teacher_name')
  final String teacherName;

  @override
  String toString() {
    return 'LessonModel(lessonName: $lessonName, dateUnixMs: $dateUnixMs, teacherName: $teacherName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LessonModel &&
            (identical(other.lessonName, lessonName) ||
                const DeepCollectionEquality().equals(other.lessonName, lessonName)) &&
            (identical(other.dateUnixMs, dateUnixMs) ||
                const DeepCollectionEquality().equals(other.dateUnixMs, dateUnixMs)) &&
            (identical(other.teacherName, teacherName) ||
                const DeepCollectionEquality().equals(other.teacherName, teacherName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lessonName) ^
      const DeepCollectionEquality().hash(dateUnixMs) ^
      const DeepCollectionEquality().hash(teacherName);

  @JsonKey(ignore: true)
  @override
  _$LessonModelCopyWith<_LessonModel> get copyWith => __$LessonModelCopyWithImpl<_LessonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LessonModelToJson(this);
  }
}

abstract class _LessonModel extends LessonModel {
  const factory _LessonModel(
      @JsonKey(name: 'lesson_name') String lessonName,
      @JsonKey(name: 'date_unix_ms') int dateUnixMs,
      @JsonKey(name: 'teacher_name') String teacherName) = _$_LessonModel;
  const _LessonModel._() : super._();

  factory _LessonModel.fromJson(Map<String, dynamic> json) = _$_LessonModel.fromJson;

  @override
  @JsonKey(name: 'lesson_name')
  String get lessonName => throw _privateConstructorUsedError;
  @override // TODO guid ????
  @JsonKey(name: 'date_unix_ms')
  int get dateUnixMs => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'teacher_name')
  String get teacherName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LessonModelCopyWith<_LessonModel> get copyWith => throw _privateConstructorUsedError;
}
