// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'announcement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Announcement _$AnnouncementFromJson(Map<String, dynamic> json) {
  return _Announcement.fromJson(json);
}

/// @nodoc
class _$AnnouncementTearOff {
  const _$AnnouncementTearOff();

  _Announcement call(
      {@JsonKey(name: 'title')
          String? title,
      @JsonKey(name: 'content')
          String? content,
      @JsonKey(name: 'user_groups', defaultValue: const <String>[defaultUserGroup])
          List<String> userGroups = const <String>[defaultUserGroup]}) {
    return _Announcement(
      title: title,
      content: content,
      userGroups: userGroups,
    );
  }

  Announcement fromJson(Map<String, Object> json) {
    return Announcement.fromJson(json);
  }
}

/// @nodoc
const $Announcement = _$AnnouncementTearOff();

/// @nodoc
mixin _$Announcement {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_groups', defaultValue: const <String>[defaultUserGroup])
  List<String> get userGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementCopyWith<Announcement> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementCopyWith<$Res> {
  factory $AnnouncementCopyWith(Announcement value, $Res Function(Announcement) then) =
      _$AnnouncementCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'user_groups', defaultValue: const <String>[defaultUserGroup]) List<String> userGroups});
}

/// @nodoc
class _$AnnouncementCopyWithImpl<$Res> implements $AnnouncementCopyWith<$Res> {
  _$AnnouncementCopyWithImpl(this._value, this._then);

  final Announcement _value;
  // ignore: unused_field
  final $Res Function(Announcement) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? userGroups = freezed,
  }) {
    return _then(_value.copyWith(
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
    ));
  }
}

/// @nodoc
abstract class _$AnnouncementCopyWith<$Res> implements $AnnouncementCopyWith<$Res> {
  factory _$AnnouncementCopyWith(_Announcement value, $Res Function(_Announcement) then) =
      __$AnnouncementCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'user_groups', defaultValue: const <String>[defaultUserGroup]) List<String> userGroups});
}

/// @nodoc
class __$AnnouncementCopyWithImpl<$Res> extends _$AnnouncementCopyWithImpl<$Res>
    implements _$AnnouncementCopyWith<$Res> {
  __$AnnouncementCopyWithImpl(_Announcement _value, $Res Function(_Announcement) _then)
      : super(_value, (v) => _then(v as _Announcement));

  @override
  _Announcement get _value => super._value as _Announcement;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? userGroups = freezed,
  }) {
    return _then(_Announcement(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Announcement extends _Announcement {
  const _$_Announcement(
      {@JsonKey(name: 'title')
          this.title,
      @JsonKey(name: 'content')
          this.content,
      @JsonKey(name: 'user_groups', defaultValue: const <String>[defaultUserGroup])
          this.userGroups = const <String>[defaultUserGroup]})
      : super._();

  factory _$_Announcement.fromJson(Map<String, dynamic> json) => _$_$_AnnouncementFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'user_groups', defaultValue: const <String>[defaultUserGroup])
  final List<String> userGroups;

  @override
  String toString() {
    return 'Announcement(title: $title, content: $content, userGroups: $userGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Announcement &&
            (identical(other.title, title) || const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) || const DeepCollectionEquality().equals(other.content, content)) &&
            (identical(other.userGroups, userGroups) ||
                const DeepCollectionEquality().equals(other.userGroups, userGroups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(userGroups);

  @JsonKey(ignore: true)
  @override
  _$AnnouncementCopyWith<_Announcement> get copyWith => __$AnnouncementCopyWithImpl<_Announcement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnnouncementToJson(this);
  }
}

abstract class _Announcement extends Announcement {
  const factory _Announcement(
          {@JsonKey(name: 'title') String? title,
          @JsonKey(name: 'content') String? content,
          @JsonKey(name: 'user_groups', defaultValue: const <String>[defaultUserGroup]) List<String> userGroups}) =
      _$_Announcement;
  const _Announcement._() : super._();

  factory _Announcement.fromJson(Map<String, dynamic> json) = _$_Announcement.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_groups', defaultValue: const <String>[defaultUserGroup])
  List<String> get userGroups => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnnouncementCopyWith<_Announcement> get copyWith => throw _privateConstructorUsedError;
}
