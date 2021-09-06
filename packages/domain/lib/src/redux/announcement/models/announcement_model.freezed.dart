// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'announcement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnnouncementModel _$AnnouncementModelFromJson(Map<String, dynamic> json) {
  return _AnnouncementModel.fromJson(json);
}

/// @nodoc
class _$AnnouncementModelTearOff {
  const _$AnnouncementModelTearOff();

  _AnnouncementModel call(@JsonKey(name: 'id') String id,
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'user_groups', defaultValue: const <String>[]) List<String> userGroups = const <String>[],
      @JsonKey(name: 'is_top_event', defaultValue: false) bool isTopEvent = false,
      @JsonKey(name: 'date_unix_ms') int? dateUnixMs,
      @JsonKey(name: 'is_unread', defaultValue: false) bool isUnread = false}) {
    return _AnnouncementModel(
      id,
      title: title,
      content: content,
      userGroups: userGroups,
      isTopEvent: isTopEvent,
      dateUnixMs: dateUnixMs,
      isUnread: isUnread,
    );
  }

  AnnouncementModel fromJson(Map<String, Object> json) {
    return AnnouncementModel.fromJson(json);
  }
}

/// @nodoc
const $AnnouncementModel = _$AnnouncementModelTearOff();

/// @nodoc
mixin _$AnnouncementModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError; // groups that will be notified
  @JsonKey(name: 'user_groups', defaultValue: const <String>[])
  List<String> get userGroups => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_top_event', defaultValue: false)
  bool get isTopEvent => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_unix_ms')
  int? get dateUnixMs => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_unread', defaultValue: false)
  bool get isUnread => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementModelCopyWith<AnnouncementModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementModelCopyWith<$Res> {
  factory $AnnouncementModelCopyWith(AnnouncementModel value, $Res Function(AnnouncementModel) then) =
      _$AnnouncementModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'user_groups', defaultValue: const <String>[]) List<String> userGroups,
      @JsonKey(name: 'is_top_event', defaultValue: false) bool isTopEvent,
      @JsonKey(name: 'date_unix_ms') int? dateUnixMs,
      @JsonKey(name: 'is_unread', defaultValue: false) bool isUnread});
}

/// @nodoc
class _$AnnouncementModelCopyWithImpl<$Res> implements $AnnouncementModelCopyWith<$Res> {
  _$AnnouncementModelCopyWithImpl(this._value, this._then);

  final AnnouncementModel _value;
  // ignore: unused_field
  final $Res Function(AnnouncementModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? userGroups = freezed,
    Object? isTopEvent = freezed,
    Object? dateUnixMs = freezed,
    Object? isUnread = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      userGroups: userGroups == freezed
          ? _value.userGroups
          : userGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isTopEvent: isTopEvent == freezed
          ? _value.isTopEvent
          : isTopEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      dateUnixMs: dateUnixMs == freezed
          ? _value.dateUnixMs
          : dateUnixMs // ignore: cast_nullable_to_non_nullable
              as int?,
      isUnread: isUnread == freezed
          ? _value.isUnread
          : isUnread // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AnnouncementModelCopyWith<$Res> implements $AnnouncementModelCopyWith<$Res> {
  factory _$AnnouncementModelCopyWith(_AnnouncementModel value, $Res Function(_AnnouncementModel) then) =
      __$AnnouncementModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'user_groups', defaultValue: const <String>[]) List<String> userGroups,
      @JsonKey(name: 'is_top_event', defaultValue: false) bool isTopEvent,
      @JsonKey(name: 'date_unix_ms') int? dateUnixMs,
      @JsonKey(name: 'is_unread', defaultValue: false) bool isUnread});
}

/// @nodoc
class __$AnnouncementModelCopyWithImpl<$Res> extends _$AnnouncementModelCopyWithImpl<$Res>
    implements _$AnnouncementModelCopyWith<$Res> {
  __$AnnouncementModelCopyWithImpl(_AnnouncementModel _value, $Res Function(_AnnouncementModel) _then)
      : super(_value, (v) => _then(v as _AnnouncementModel));

  @override
  _AnnouncementModel get _value => super._value as _AnnouncementModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? userGroups = freezed,
    Object? isTopEvent = freezed,
    Object? dateUnixMs = freezed,
    Object? isUnread = freezed,
  }) {
    return _then(_AnnouncementModel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      userGroups: userGroups == freezed
          ? _value.userGroups
          : userGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isTopEvent: isTopEvent == freezed
          ? _value.isTopEvent
          : isTopEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      dateUnixMs: dateUnixMs == freezed
          ? _value.dateUnixMs
          : dateUnixMs // ignore: cast_nullable_to_non_nullable
              as int?,
      isUnread: isUnread == freezed
          ? _value.isUnread
          : isUnread // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnnouncementModel extends _AnnouncementModel {
  const _$_AnnouncementModel(@JsonKey(name: 'id') this.id,
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'user_groups', defaultValue: const <String>[]) this.userGroups = const <String>[],
      @JsonKey(name: 'is_top_event', defaultValue: false) this.isTopEvent = false,
      @JsonKey(name: 'date_unix_ms') this.dateUnixMs,
      @JsonKey(name: 'is_unread', defaultValue: false) this.isUnread = false})
      : super._();

  factory _$_AnnouncementModel.fromJson(Map<String, dynamic> json) => _$_$_AnnouncementModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override // groups that will be notified
  @JsonKey(name: 'user_groups', defaultValue: const <String>[])
  final List<String> userGroups;
  @override
  @JsonKey(name: 'is_top_event', defaultValue: false)
  final bool isTopEvent;
  @override
  @JsonKey(name: 'date_unix_ms')
  final int? dateUnixMs;
  @override
  @JsonKey(name: 'is_unread', defaultValue: false)
  final bool isUnread;

  @override
  String toString() {
    return 'AnnouncementModel(id: $id, title: $title, content: $content, userGroups: $userGroups, isTopEvent: $isTopEvent, dateUnixMs: $dateUnixMs, isUnread: $isUnread)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnnouncementModel &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) || const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) || const DeepCollectionEquality().equals(other.content, content)) &&
            (identical(other.userGroups, userGroups) ||
                const DeepCollectionEquality().equals(other.userGroups, userGroups)) &&
            (identical(other.isTopEvent, isTopEvent) ||
                const DeepCollectionEquality().equals(other.isTopEvent, isTopEvent)) &&
            (identical(other.dateUnixMs, dateUnixMs) ||
                const DeepCollectionEquality().equals(other.dateUnixMs, dateUnixMs)) &&
            (identical(other.isUnread, isUnread) || const DeepCollectionEquality().equals(other.isUnread, isUnread)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(userGroups) ^
      const DeepCollectionEquality().hash(isTopEvent) ^
      const DeepCollectionEquality().hash(dateUnixMs) ^
      const DeepCollectionEquality().hash(isUnread);

  @JsonKey(ignore: true)
  @override
  _$AnnouncementModelCopyWith<_AnnouncementModel> get copyWith =>
      __$AnnouncementModelCopyWithImpl<_AnnouncementModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnnouncementModelToJson(this);
  }
}

abstract class _AnnouncementModel extends AnnouncementModel {
  const factory _AnnouncementModel(@JsonKey(name: 'id') String id,
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'user_groups', defaultValue: const <String>[]) List<String> userGroups,
      @JsonKey(name: 'is_top_event', defaultValue: false) bool isTopEvent,
      @JsonKey(name: 'date_unix_ms') int? dateUnixMs,
      @JsonKey(name: 'is_unread', defaultValue: false) bool isUnread}) = _$_AnnouncementModel;
  const _AnnouncementModel._() : super._();

  factory _AnnouncementModel.fromJson(Map<String, dynamic> json) = _$_AnnouncementModel.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @override // groups that will be notified
  @JsonKey(name: 'user_groups', defaultValue: const <String>[])
  List<String> get userGroups => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_top_event', defaultValue: false)
  bool get isTopEvent => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date_unix_ms')
  int? get dateUnixMs => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_unread', defaultValue: false)
  bool get isUnread => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnnouncementModelCopyWith<_AnnouncementModel> get copyWith => throw _privateConstructorUsedError;
}
