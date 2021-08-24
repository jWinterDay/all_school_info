// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'announcement_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AnnouncementActionTearOff {
  const _$AnnouncementActionTearOff();

  _Start start() {
    return const _Start();
  }

  _ChangeLoading changeLoading({required bool value}) {
    return _ChangeLoading(
      value: value,
    );
  }

  _AddAnnouncement addAnnouncement({required AnnouncementModel announcement}) {
    return _AddAnnouncement(
      announcement: announcement,
    );
  }

  _FetchAnnouncements fetchAnnouncements() {
    return const _FetchAnnouncements();
  }

  _CleanUp cleanUp() {
    return const _CleanUp();
  }
}

/// @nodoc
const $AnnouncementAction = _$AnnouncementActionTearOff();

/// @nodoc
mixin _$AnnouncementAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(AnnouncementModel announcement) addAnnouncement,
    required TResult Function() fetchAnnouncements,
    required TResult Function() cleanUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(AnnouncementModel announcement)? addAnnouncement,
    TResult Function()? fetchAnnouncements,
    TResult Function()? cleanUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_CleanUp value) cleanUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_CleanUp value)? cleanUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementActionCopyWith<$Res> {
  factory $AnnouncementActionCopyWith(AnnouncementAction value, $Res Function(AnnouncementAction) then) =
      _$AnnouncementActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnnouncementActionCopyWithImpl<$Res> implements $AnnouncementActionCopyWith<$Res> {
  _$AnnouncementActionCopyWithImpl(this._value, this._then);

  final AnnouncementAction _value;
  // ignore: unused_field
  final $Res Function(AnnouncementAction) _then;
}

/// @nodoc
abstract class _$StartCopyWith<$Res> {
  factory _$StartCopyWith(_Start value, $Res Function(_Start) then) = __$StartCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res> implements _$StartCopyWith<$Res> {
  __$StartCopyWithImpl(_Start _value, $Res Function(_Start) _then) : super(_value, (v) => _then(v as _Start));

  @override
  _Start get _value => super._value as _Start;
}

/// @nodoc

class _$_Start implements _Start {
  const _$_Start();

  @override
  String toString() {
    return 'AnnouncementAction.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Start);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(AnnouncementModel announcement) addAnnouncement,
    required TResult Function() fetchAnnouncements,
    required TResult Function() cleanUp,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(AnnouncementModel announcement)? addAnnouncement,
    TResult Function()? fetchAnnouncements,
    TResult Function()? cleanUp,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_CleanUp value) cleanUp,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_CleanUp value)? cleanUp,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements AnnouncementAction {
  const factory _Start() = _$_Start;
}

/// @nodoc
abstract class _$ChangeLoadingCopyWith<$Res> {
  factory _$ChangeLoadingCopyWith(_ChangeLoading value, $Res Function(_ChangeLoading) then) =
      __$ChangeLoadingCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$ChangeLoadingCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
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
    return 'AnnouncementAction.changeLoading(value: $value)';
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
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(AnnouncementModel announcement) addAnnouncement,
    required TResult Function() fetchAnnouncements,
    required TResult Function() cleanUp,
  }) {
    return changeLoading(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(AnnouncementModel announcement)? addAnnouncement,
    TResult Function()? fetchAnnouncements,
    TResult Function()? cleanUp,
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
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_CleanUp value) cleanUp,
  }) {
    return changeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_CleanUp value)? cleanUp,
    required TResult orElse(),
  }) {
    if (changeLoading != null) {
      return changeLoading(this);
    }
    return orElse();
  }
}

abstract class _ChangeLoading implements AnnouncementAction {
  const factory _ChangeLoading({required bool value}) = _$_ChangeLoading;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeLoadingCopyWith<_ChangeLoading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddAnnouncementCopyWith<$Res> {
  factory _$AddAnnouncementCopyWith(_AddAnnouncement value, $Res Function(_AddAnnouncement) then) =
      __$AddAnnouncementCopyWithImpl<$Res>;
  $Res call({AnnouncementModel announcement});

  $AnnouncementModelCopyWith<$Res> get announcement;
}

/// @nodoc
class __$AddAnnouncementCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$AddAnnouncementCopyWith<$Res> {
  __$AddAnnouncementCopyWithImpl(_AddAnnouncement _value, $Res Function(_AddAnnouncement) _then)
      : super(_value, (v) => _then(v as _AddAnnouncement));

  @override
  _AddAnnouncement get _value => super._value as _AddAnnouncement;

  @override
  $Res call({
    Object? announcement = freezed,
  }) {
    return _then(_AddAnnouncement(
      announcement: announcement == freezed
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as AnnouncementModel,
    ));
  }

  @override
  $AnnouncementModelCopyWith<$Res> get announcement {
    return $AnnouncementModelCopyWith<$Res>(_value.announcement, (value) {
      return _then(_value.copyWith(announcement: value));
    });
  }
}

/// @nodoc

class _$_AddAnnouncement implements _AddAnnouncement {
  const _$_AddAnnouncement({required this.announcement});

  @override
  final AnnouncementModel announcement;

  @override
  String toString() {
    return 'AnnouncementAction.addAnnouncement(announcement: $announcement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddAnnouncement &&
            (identical(other.announcement, announcement) ||
                const DeepCollectionEquality().equals(other.announcement, announcement)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(announcement);

  @JsonKey(ignore: true)
  @override
  _$AddAnnouncementCopyWith<_AddAnnouncement> get copyWith =>
      __$AddAnnouncementCopyWithImpl<_AddAnnouncement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(AnnouncementModel announcement) addAnnouncement,
    required TResult Function() fetchAnnouncements,
    required TResult Function() cleanUp,
  }) {
    return addAnnouncement(announcement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(AnnouncementModel announcement)? addAnnouncement,
    TResult Function()? fetchAnnouncements,
    TResult Function()? cleanUp,
    required TResult orElse(),
  }) {
    if (addAnnouncement != null) {
      return addAnnouncement(announcement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_CleanUp value) cleanUp,
  }) {
    return addAnnouncement(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_CleanUp value)? cleanUp,
    required TResult orElse(),
  }) {
    if (addAnnouncement != null) {
      return addAnnouncement(this);
    }
    return orElse();
  }
}

abstract class _AddAnnouncement implements AnnouncementAction {
  const factory _AddAnnouncement({required AnnouncementModel announcement}) = _$_AddAnnouncement;

  AnnouncementModel get announcement => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddAnnouncementCopyWith<_AddAnnouncement> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchAnnouncementsCopyWith<$Res> {
  factory _$FetchAnnouncementsCopyWith(_FetchAnnouncements value, $Res Function(_FetchAnnouncements) then) =
      __$FetchAnnouncementsCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchAnnouncementsCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$FetchAnnouncementsCopyWith<$Res> {
  __$FetchAnnouncementsCopyWithImpl(_FetchAnnouncements _value, $Res Function(_FetchAnnouncements) _then)
      : super(_value, (v) => _then(v as _FetchAnnouncements));

  @override
  _FetchAnnouncements get _value => super._value as _FetchAnnouncements;
}

/// @nodoc

class _$_FetchAnnouncements implements _FetchAnnouncements {
  const _$_FetchAnnouncements();

  @override
  String toString() {
    return 'AnnouncementAction.fetchAnnouncements()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchAnnouncements);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(AnnouncementModel announcement) addAnnouncement,
    required TResult Function() fetchAnnouncements,
    required TResult Function() cleanUp,
  }) {
    return fetchAnnouncements();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(AnnouncementModel announcement)? addAnnouncement,
    TResult Function()? fetchAnnouncements,
    TResult Function()? cleanUp,
    required TResult orElse(),
  }) {
    if (fetchAnnouncements != null) {
      return fetchAnnouncements();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_CleanUp value) cleanUp,
  }) {
    return fetchAnnouncements(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_CleanUp value)? cleanUp,
    required TResult orElse(),
  }) {
    if (fetchAnnouncements != null) {
      return fetchAnnouncements(this);
    }
    return orElse();
  }
}

abstract class _FetchAnnouncements implements AnnouncementAction {
  const factory _FetchAnnouncements() = _$_FetchAnnouncements;
}

/// @nodoc
abstract class _$CleanUpCopyWith<$Res> {
  factory _$CleanUpCopyWith(_CleanUp value, $Res Function(_CleanUp) then) = __$CleanUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$CleanUpCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res> implements _$CleanUpCopyWith<$Res> {
  __$CleanUpCopyWithImpl(_CleanUp _value, $Res Function(_CleanUp) _then) : super(_value, (v) => _then(v as _CleanUp));

  @override
  _CleanUp get _value => super._value as _CleanUp;
}

/// @nodoc

class _$_CleanUp implements _CleanUp {
  const _$_CleanUp();

  @override
  String toString() {
    return 'AnnouncementAction.cleanUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CleanUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(AnnouncementModel announcement) addAnnouncement,
    required TResult Function() fetchAnnouncements,
    required TResult Function() cleanUp,
  }) {
    return cleanUp();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(AnnouncementModel announcement)? addAnnouncement,
    TResult Function()? fetchAnnouncements,
    TResult Function()? cleanUp,
    required TResult orElse(),
  }) {
    if (cleanUp != null) {
      return cleanUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_CleanUp value) cleanUp,
  }) {
    return cleanUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_CleanUp value)? cleanUp,
    required TResult orElse(),
  }) {
    if (cleanUp != null) {
      return cleanUp(this);
    }
    return orElse();
  }
}

abstract class _CleanUp implements AnnouncementAction {
  const factory _CleanUp() = _$_CleanUp;
}
