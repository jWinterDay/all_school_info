// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'announcement_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnnouncementState _$AnnouncementStateFromJson(Map<String, dynamic> json) {
  return _AnnouncementState.fromJson(json);
}

/// @nodoc
class _$AnnouncementStateTearOff {
  const _$AnnouncementStateTearOff();

  _AnnouncementState call({@JsonKey(name: 'announcement_list') List<Announcement>? announcementList}) {
    return _AnnouncementState(
      announcementList: announcementList,
    );
  }

  AnnouncementState fromJson(Map<String, Object> json) {
    return AnnouncementState.fromJson(json);
  }
}

/// @nodoc
const $AnnouncementState = _$AnnouncementStateTearOff();

/// @nodoc
mixin _$AnnouncementState {
  @JsonKey(name: 'announcement_list')
  List<Announcement>? get announcementList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementStateCopyWith<AnnouncementState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementStateCopyWith<$Res> {
  factory $AnnouncementStateCopyWith(AnnouncementState value, $Res Function(AnnouncementState) then) =
      _$AnnouncementStateCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'announcement_list') List<Announcement>? announcementList});
}

/// @nodoc
class _$AnnouncementStateCopyWithImpl<$Res> implements $AnnouncementStateCopyWith<$Res> {
  _$AnnouncementStateCopyWithImpl(this._value, this._then);

  final AnnouncementState _value;
  // ignore: unused_field
  final $Res Function(AnnouncementState) _then;

  @override
  $Res call({
    Object? announcementList = freezed,
  }) {
    return _then(_value.copyWith(
      announcementList: announcementList == freezed
          ? _value.announcementList
          : announcementList // ignore: cast_nullable_to_non_nullable
              as List<Announcement>?,
    ));
  }
}

/// @nodoc
abstract class _$AnnouncementStateCopyWith<$Res> implements $AnnouncementStateCopyWith<$Res> {
  factory _$AnnouncementStateCopyWith(_AnnouncementState value, $Res Function(_AnnouncementState) then) =
      __$AnnouncementStateCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'announcement_list') List<Announcement>? announcementList});
}

/// @nodoc
class __$AnnouncementStateCopyWithImpl<$Res> extends _$AnnouncementStateCopyWithImpl<$Res>
    implements _$AnnouncementStateCopyWith<$Res> {
  __$AnnouncementStateCopyWithImpl(_AnnouncementState _value, $Res Function(_AnnouncementState) _then)
      : super(_value, (v) => _then(v as _AnnouncementState));

  @override
  _AnnouncementState get _value => super._value as _AnnouncementState;

  @override
  $Res call({
    Object? announcementList = freezed,
  }) {
    return _then(_AnnouncementState(
      announcementList: announcementList == freezed
          ? _value.announcementList
          : announcementList // ignore: cast_nullable_to_non_nullable
              as List<Announcement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnnouncementState extends _AnnouncementState {
  const _$_AnnouncementState({@JsonKey(name: 'announcement_list') this.announcementList}) : super._();

  factory _$_AnnouncementState.fromJson(Map<String, dynamic> json) => _$_$_AnnouncementStateFromJson(json);

  @override
  @JsonKey(name: 'announcement_list')
  final List<Announcement>? announcementList;

  @override
  String toString() {
    return 'AnnouncementState(announcementList: $announcementList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnnouncementState &&
            (identical(other.announcementList, announcementList) ||
                const DeepCollectionEquality().equals(other.announcementList, announcementList)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(announcementList);

  @JsonKey(ignore: true)
  @override
  _$AnnouncementStateCopyWith<_AnnouncementState> get copyWith =>
      __$AnnouncementStateCopyWithImpl<_AnnouncementState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnnouncementStateToJson(this);
  }
}

abstract class _AnnouncementState extends AnnouncementState {
  const factory _AnnouncementState({@JsonKey(name: 'announcement_list') List<Announcement>? announcementList}) =
      _$_AnnouncementState;
  const _AnnouncementState._() : super._();

  factory _AnnouncementState.fromJson(Map<String, dynamic> json) = _$_AnnouncementState.fromJson;

  @override
  @JsonKey(name: 'announcement_list')
  List<Announcement>? get announcementList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnnouncementStateCopyWith<_AnnouncementState> get copyWith => throw _privateConstructorUsedError;
}
