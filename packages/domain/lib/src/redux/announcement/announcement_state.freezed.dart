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

  _AnnouncementState call(
      {@JsonKey(name: 'list', defaultValue: const <AnnouncementModel>[])
          List<AnnouncementModel> list = const <AnnouncementModel>[],
      @JsonKey(name: 'top_list', defaultValue: const <AnnouncementModel>[])
          List<AnnouncementModel> topList = const <AnnouncementModel>[],
      @JsonKey(name: 'loading', defaultValue: false)
          bool loading = false,
      @JsonKey(name: 'first_loading', defaultValue: true)
          bool firstLoading = true,
      @JsonKey(name: 'error_model')
          ErrorModel? errorModel}) {
    return _AnnouncementState(
      list: list,
      topList: topList,
      loading: loading,
      firstLoading: firstLoading,
      errorModel: errorModel,
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
  @JsonKey(name: 'list', defaultValue: const <AnnouncementModel>[])
  List<AnnouncementModel> get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'top_list', defaultValue: const <AnnouncementModel>[])
  List<AnnouncementModel> get topList => throw _privateConstructorUsedError;
  @JsonKey(name: 'loading', defaultValue: false)
  bool get loading => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_loading', defaultValue: true)
  bool get firstLoading => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_model')
  ErrorModel? get errorModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementStateCopyWith<AnnouncementState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementStateCopyWith<$Res> {
  factory $AnnouncementStateCopyWith(AnnouncementState value, $Res Function(AnnouncementState) then) =
      _$AnnouncementStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'list', defaultValue: const <AnnouncementModel>[]) List<AnnouncementModel> list,
      @JsonKey(name: 'top_list', defaultValue: const <AnnouncementModel>[]) List<AnnouncementModel> topList,
      @JsonKey(name: 'loading', defaultValue: false) bool loading,
      @JsonKey(name: 'first_loading', defaultValue: true) bool firstLoading,
      @JsonKey(name: 'error_model') ErrorModel? errorModel});

  $ErrorModelCopyWith<$Res>? get errorModel;
}

/// @nodoc
class _$AnnouncementStateCopyWithImpl<$Res> implements $AnnouncementStateCopyWith<$Res> {
  _$AnnouncementStateCopyWithImpl(this._value, this._then);

  final AnnouncementState _value;
  // ignore: unused_field
  final $Res Function(AnnouncementState) _then;

  @override
  $Res call({
    Object? list = freezed,
    Object? topList = freezed,
    Object? loading = freezed,
    Object? firstLoading = freezed,
    Object? errorModel = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementModel>,
      topList: topList == freezed
          ? _value.topList
          : topList // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementModel>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      firstLoading: firstLoading == freezed
          ? _value.firstLoading
          : firstLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorModel: errorModel == freezed
          ? _value.errorModel
          : errorModel // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
    ));
  }

  @override
  $ErrorModelCopyWith<$Res>? get errorModel {
    if (_value.errorModel == null) {
      return null;
    }

    return $ErrorModelCopyWith<$Res>(_value.errorModel!, (value) {
      return _then(_value.copyWith(errorModel: value));
    });
  }
}

/// @nodoc
abstract class _$AnnouncementStateCopyWith<$Res> implements $AnnouncementStateCopyWith<$Res> {
  factory _$AnnouncementStateCopyWith(_AnnouncementState value, $Res Function(_AnnouncementState) then) =
      __$AnnouncementStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'list', defaultValue: const <AnnouncementModel>[]) List<AnnouncementModel> list,
      @JsonKey(name: 'top_list', defaultValue: const <AnnouncementModel>[]) List<AnnouncementModel> topList,
      @JsonKey(name: 'loading', defaultValue: false) bool loading,
      @JsonKey(name: 'first_loading', defaultValue: true) bool firstLoading,
      @JsonKey(name: 'error_model') ErrorModel? errorModel});

  @override
  $ErrorModelCopyWith<$Res>? get errorModel;
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
    Object? list = freezed,
    Object? topList = freezed,
    Object? loading = freezed,
    Object? firstLoading = freezed,
    Object? errorModel = freezed,
  }) {
    return _then(_AnnouncementState(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementModel>,
      topList: topList == freezed
          ? _value.topList
          : topList // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementModel>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      firstLoading: firstLoading == freezed
          ? _value.firstLoading
          : firstLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorModel: errorModel == freezed
          ? _value.errorModel
          : errorModel // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnnouncementState extends _AnnouncementState {
  const _$_AnnouncementState(
      {@JsonKey(name: 'list', defaultValue: const <AnnouncementModel>[]) this.list = const <AnnouncementModel>[],
      @JsonKey(name: 'top_list', defaultValue: const <AnnouncementModel>[]) this.topList = const <AnnouncementModel>[],
      @JsonKey(name: 'loading', defaultValue: false) this.loading = false,
      @JsonKey(name: 'first_loading', defaultValue: true) this.firstLoading = true,
      @JsonKey(name: 'error_model') this.errorModel})
      : super._();

  factory _$_AnnouncementState.fromJson(Map<String, dynamic> json) => _$_$_AnnouncementStateFromJson(json);

  @override
  @JsonKey(name: 'list', defaultValue: const <AnnouncementModel>[])
  final List<AnnouncementModel> list;
  @override
  @JsonKey(name: 'top_list', defaultValue: const <AnnouncementModel>[])
  final List<AnnouncementModel> topList;
  @override
  @JsonKey(name: 'loading', defaultValue: false)
  final bool loading;
  @override
  @JsonKey(name: 'first_loading', defaultValue: true)
  final bool firstLoading;
  @override
  @JsonKey(name: 'error_model')
  final ErrorModel? errorModel;

  @override
  String toString() {
    return 'AnnouncementState(list: $list, topList: $topList, loading: $loading, firstLoading: $firstLoading, errorModel: $errorModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnnouncementState &&
            (identical(other.list, list) || const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.topList, topList) || const DeepCollectionEquality().equals(other.topList, topList)) &&
            (identical(other.loading, loading) || const DeepCollectionEquality().equals(other.loading, loading)) &&
            (identical(other.firstLoading, firstLoading) ||
                const DeepCollectionEquality().equals(other.firstLoading, firstLoading)) &&
            (identical(other.errorModel, errorModel) ||
                const DeepCollectionEquality().equals(other.errorModel, errorModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(topList) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(firstLoading) ^
      const DeepCollectionEquality().hash(errorModel);

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
  const factory _AnnouncementState(
      {@JsonKey(name: 'list', defaultValue: const <AnnouncementModel>[]) List<AnnouncementModel> list,
      @JsonKey(name: 'top_list', defaultValue: const <AnnouncementModel>[]) List<AnnouncementModel> topList,
      @JsonKey(name: 'loading', defaultValue: false) bool loading,
      @JsonKey(name: 'first_loading', defaultValue: true) bool firstLoading,
      @JsonKey(name: 'error_model') ErrorModel? errorModel}) = _$_AnnouncementState;
  const _AnnouncementState._() : super._();

  factory _AnnouncementState.fromJson(Map<String, dynamic> json) = _$_AnnouncementState.fromJson;

  @override
  @JsonKey(name: 'list', defaultValue: const <AnnouncementModel>[])
  List<AnnouncementModel> get list => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'top_list', defaultValue: const <AnnouncementModel>[])
  List<AnnouncementModel> get topList => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'loading', defaultValue: false)
  bool get loading => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'first_loading', defaultValue: true)
  bool get firstLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'error_model')
  ErrorModel? get errorModel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnnouncementStateCopyWith<_AnnouncementState> get copyWith => throw _privateConstructorUsedError;
}
