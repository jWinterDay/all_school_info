// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'common_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonState _$CommonStateFromJson(Map<String, dynamic> json) {
  return _CommonState.fromJson(json);
}

/// @nodoc
class _$CommonStateTearOff {
  const _$CommonStateTearOff();

  _CommonState call(
      {@JsonKey(name: 'top_announcement_count', defaultValue: 5) int topAnnouncementCount = 5,
      @JsonKey(name: 'announcement_max_title_length', defaultValue: 20) int announcementMaxTitleLength = 20,
      @JsonKey(name: 'announcementMaxContentLength', defaultValue: 160) int announcementMaxContentLength = 160,
      @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none) AppLifecycle appLifecycle = AppLifecycle.none,
      String? fcmToken}) {
    return _CommonState(
      topAnnouncementCount: topAnnouncementCount,
      announcementMaxTitleLength: announcementMaxTitleLength,
      announcementMaxContentLength: announcementMaxContentLength,
      appLifecycle: appLifecycle,
      fcmToken: fcmToken,
    );
  }

  CommonState fromJson(Map<String, Object> json) {
    return CommonState.fromJson(json);
  }
}

/// @nodoc
const $CommonState = _$CommonStateTearOff();

/// @nodoc
mixin _$CommonState {
  @JsonKey(name: 'top_announcement_count', defaultValue: 5)
  int get topAnnouncementCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'announcement_max_title_length', defaultValue: 20)
  int get announcementMaxTitleLength => throw _privateConstructorUsedError;
  @JsonKey(name: 'announcementMaxContentLength', defaultValue: 160)
  int get announcementMaxContentLength => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none)
  AppLifecycle get appLifecycle => throw _privateConstructorUsedError;
  String? get fcmToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonStateCopyWith<CommonState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateCopyWith<$Res> {
  factory $CommonStateCopyWith(CommonState value, $Res Function(CommonState) then) = _$CommonStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'top_announcement_count', defaultValue: 5) int topAnnouncementCount,
      @JsonKey(name: 'announcement_max_title_length', defaultValue: 20) int announcementMaxTitleLength,
      @JsonKey(name: 'announcementMaxContentLength', defaultValue: 160) int announcementMaxContentLength,
      @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none) AppLifecycle appLifecycle,
      String? fcmToken});
}

/// @nodoc
class _$CommonStateCopyWithImpl<$Res> implements $CommonStateCopyWith<$Res> {
  _$CommonStateCopyWithImpl(this._value, this._then);

  final CommonState _value;
  // ignore: unused_field
  final $Res Function(CommonState) _then;

  @override
  $Res call({
    Object? topAnnouncementCount = freezed,
    Object? announcementMaxTitleLength = freezed,
    Object? announcementMaxContentLength = freezed,
    Object? appLifecycle = freezed,
    Object? fcmToken = freezed,
  }) {
    return _then(_value.copyWith(
      topAnnouncementCount: topAnnouncementCount == freezed
          ? _value.topAnnouncementCount
          : topAnnouncementCount // ignore: cast_nullable_to_non_nullable
              as int,
      announcementMaxTitleLength: announcementMaxTitleLength == freezed
          ? _value.announcementMaxTitleLength
          : announcementMaxTitleLength // ignore: cast_nullable_to_non_nullable
              as int,
      announcementMaxContentLength: announcementMaxContentLength == freezed
          ? _value.announcementMaxContentLength
          : announcementMaxContentLength // ignore: cast_nullable_to_non_nullable
              as int,
      appLifecycle: appLifecycle == freezed
          ? _value.appLifecycle
          : appLifecycle // ignore: cast_nullable_to_non_nullable
              as AppLifecycle,
      fcmToken: fcmToken == freezed
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommonStateCopyWith<$Res> implements $CommonStateCopyWith<$Res> {
  factory _$CommonStateCopyWith(_CommonState value, $Res Function(_CommonState) then) =
      __$CommonStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'top_announcement_count', defaultValue: 5) int topAnnouncementCount,
      @JsonKey(name: 'announcement_max_title_length', defaultValue: 20) int announcementMaxTitleLength,
      @JsonKey(name: 'announcementMaxContentLength', defaultValue: 160) int announcementMaxContentLength,
      @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none) AppLifecycle appLifecycle,
      String? fcmToken});
}

/// @nodoc
class __$CommonStateCopyWithImpl<$Res> extends _$CommonStateCopyWithImpl<$Res> implements _$CommonStateCopyWith<$Res> {
  __$CommonStateCopyWithImpl(_CommonState _value, $Res Function(_CommonState) _then)
      : super(_value, (v) => _then(v as _CommonState));

  @override
  _CommonState get _value => super._value as _CommonState;

  @override
  $Res call({
    Object? topAnnouncementCount = freezed,
    Object? announcementMaxTitleLength = freezed,
    Object? announcementMaxContentLength = freezed,
    Object? appLifecycle = freezed,
    Object? fcmToken = freezed,
  }) {
    return _then(_CommonState(
      topAnnouncementCount: topAnnouncementCount == freezed
          ? _value.topAnnouncementCount
          : topAnnouncementCount // ignore: cast_nullable_to_non_nullable
              as int,
      announcementMaxTitleLength: announcementMaxTitleLength == freezed
          ? _value.announcementMaxTitleLength
          : announcementMaxTitleLength // ignore: cast_nullable_to_non_nullable
              as int,
      announcementMaxContentLength: announcementMaxContentLength == freezed
          ? _value.announcementMaxContentLength
          : announcementMaxContentLength // ignore: cast_nullable_to_non_nullable
              as int,
      appLifecycle: appLifecycle == freezed
          ? _value.appLifecycle
          : appLifecycle // ignore: cast_nullable_to_non_nullable
              as AppLifecycle,
      fcmToken: fcmToken == freezed
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonState extends _CommonState {
  const _$_CommonState(
      {@JsonKey(name: 'top_announcement_count', defaultValue: 5) this.topAnnouncementCount = 5,
      @JsonKey(name: 'announcement_max_title_length', defaultValue: 20) this.announcementMaxTitleLength = 20,
      @JsonKey(name: 'announcementMaxContentLength', defaultValue: 160) this.announcementMaxContentLength = 160,
      @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none) this.appLifecycle = AppLifecycle.none,
      this.fcmToken})
      : super._();

  factory _$_CommonState.fromJson(Map<String, dynamic> json) => _$_$_CommonStateFromJson(json);

  @override
  @JsonKey(name: 'top_announcement_count', defaultValue: 5)
  final int topAnnouncementCount;
  @override
  @JsonKey(name: 'announcement_max_title_length', defaultValue: 20)
  final int announcementMaxTitleLength;
  @override
  @JsonKey(name: 'announcementMaxContentLength', defaultValue: 160)
  final int announcementMaxContentLength;
  @override
  @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none)
  final AppLifecycle appLifecycle;
  @override
  final String? fcmToken;

  @override
  String toString() {
    return 'CommonState(topAnnouncementCount: $topAnnouncementCount, announcementMaxTitleLength: $announcementMaxTitleLength, announcementMaxContentLength: $announcementMaxContentLength, appLifecycle: $appLifecycle, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommonState &&
            (identical(other.topAnnouncementCount, topAnnouncementCount) ||
                const DeepCollectionEquality().equals(other.topAnnouncementCount, topAnnouncementCount)) &&
            (identical(other.announcementMaxTitleLength, announcementMaxTitleLength) ||
                const DeepCollectionEquality().equals(other.announcementMaxTitleLength, announcementMaxTitleLength)) &&
            (identical(other.announcementMaxContentLength, announcementMaxContentLength) ||
                const DeepCollectionEquality()
                    .equals(other.announcementMaxContentLength, announcementMaxContentLength)) &&
            (identical(other.appLifecycle, appLifecycle) ||
                const DeepCollectionEquality().equals(other.appLifecycle, appLifecycle)) &&
            (identical(other.fcmToken, fcmToken) || const DeepCollectionEquality().equals(other.fcmToken, fcmToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(topAnnouncementCount) ^
      const DeepCollectionEquality().hash(announcementMaxTitleLength) ^
      const DeepCollectionEquality().hash(announcementMaxContentLength) ^
      const DeepCollectionEquality().hash(appLifecycle) ^
      const DeepCollectionEquality().hash(fcmToken);

  @JsonKey(ignore: true)
  @override
  _$CommonStateCopyWith<_CommonState> get copyWith => __$CommonStateCopyWithImpl<_CommonState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommonStateToJson(this);
  }
}

abstract class _CommonState extends CommonState {
  const factory _CommonState(
      {@JsonKey(name: 'top_announcement_count', defaultValue: 5) int topAnnouncementCount,
      @JsonKey(name: 'announcement_max_title_length', defaultValue: 20) int announcementMaxTitleLength,
      @JsonKey(name: 'announcementMaxContentLength', defaultValue: 160) int announcementMaxContentLength,
      @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none) AppLifecycle appLifecycle,
      String? fcmToken}) = _$_CommonState;
  const _CommonState._() : super._();

  factory _CommonState.fromJson(Map<String, dynamic> json) = _$_CommonState.fromJson;

  @override
  @JsonKey(name: 'top_announcement_count', defaultValue: 5)
  int get topAnnouncementCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'announcement_max_title_length', defaultValue: 20)
  int get announcementMaxTitleLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'announcementMaxContentLength', defaultValue: 160)
  int get announcementMaxContentLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none)
  AppLifecycle get appLifecycle => throw _privateConstructorUsedError;
  @override
  String? get fcmToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommonStateCopyWith<_CommonState> get copyWith => throw _privateConstructorUsedError;
}
