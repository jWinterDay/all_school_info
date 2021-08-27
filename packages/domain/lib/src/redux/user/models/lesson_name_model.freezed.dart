// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'lesson_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LessonNameModel _$LessonNameModelFromJson(Map<String, dynamic> json) {
  return _LessonNameModel.fromJson(json);
}

/// @nodoc
class _$LessonNameModelTearOff {
  const _$LessonNameModelTearOff();

  _LessonNameModel call(@JsonKey(name: 'id') String id,
      {@JsonKey(name: 'title') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'active', defaultValue: true) bool active = true}) {
    return _LessonNameModel(
      id,
      name: name,
      description: description,
      active: active,
    );
  }

  LessonNameModel fromJson(Map<String, Object> json) {
    return LessonNameModel.fromJson(json);
  }
}

/// @nodoc
const $LessonNameModel = _$LessonNameModelTearOff();

/// @nodoc
mixin _$LessonNameModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'active', defaultValue: true)
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonNameModelCopyWith<LessonNameModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonNameModelCopyWith<$Res> {
  factory $LessonNameModelCopyWith(LessonNameModel value, $Res Function(LessonNameModel) then) =
      _$LessonNameModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'active', defaultValue: true) bool active});
}

/// @nodoc
class _$LessonNameModelCopyWithImpl<$Res> implements $LessonNameModelCopyWith<$Res> {
  _$LessonNameModelCopyWithImpl(this._value, this._then);

  final LessonNameModel _value;
  // ignore: unused_field
  final $Res Function(LessonNameModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LessonNameModelCopyWith<$Res> implements $LessonNameModelCopyWith<$Res> {
  factory _$LessonNameModelCopyWith(_LessonNameModel value, $Res Function(_LessonNameModel) then) =
      __$LessonNameModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'active', defaultValue: true) bool active});
}

/// @nodoc
class __$LessonNameModelCopyWithImpl<$Res> extends _$LessonNameModelCopyWithImpl<$Res>
    implements _$LessonNameModelCopyWith<$Res> {
  __$LessonNameModelCopyWithImpl(_LessonNameModel _value, $Res Function(_LessonNameModel) _then)
      : super(_value, (v) => _then(v as _LessonNameModel));

  @override
  _LessonNameModel get _value => super._value as _LessonNameModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? active = freezed,
  }) {
    return _then(_LessonNameModel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LessonNameModel extends _LessonNameModel {
  const _$_LessonNameModel(@JsonKey(name: 'id') this.id,
      {@JsonKey(name: 'title') this.name,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'active', defaultValue: true) this.active = true})
      : super._();

  factory _$_LessonNameModel.fromJson(Map<String, dynamic> json) => _$_$_LessonNameModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String? name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'active', defaultValue: true)
  final bool active;

  @override
  String toString() {
    return 'LessonNameModel(id: $id, name: $name, description: $description, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LessonNameModel &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.active, active) || const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(active);

  @JsonKey(ignore: true)
  @override
  _$LessonNameModelCopyWith<_LessonNameModel> get copyWith =>
      __$LessonNameModelCopyWithImpl<_LessonNameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LessonNameModelToJson(this);
  }
}

abstract class _LessonNameModel extends LessonNameModel {
  const factory _LessonNameModel(@JsonKey(name: 'id') String id,
      {@JsonKey(name: 'title') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'active', defaultValue: true) bool active}) = _$_LessonNameModel;
  const _LessonNameModel._() : super._();

  factory _LessonNameModel.fromJson(Map<String, dynamic> json) = _$_LessonNameModel.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'active', defaultValue: true)
  bool get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LessonNameModelCopyWith<_LessonNameModel> get copyWith => throw _privateConstructorUsedError;
}
