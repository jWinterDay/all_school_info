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

  _ChangeFirstLoading changeFirstLoading({required bool value}) {
    return _ChangeFirstLoading(
      value: value,
    );
  }

  _SetErrorModel setErrorModel({required ErrorModel value}) {
    return _SetErrorModel(
      value: value,
    );
  }

  _ClearErrorModel clearErrorModel() {
    return const _ClearErrorModel();
  }

  _CleanUp cleanUp() {
    return const _CleanUp();
  }

  _ChangeLimit changeLimit({required int value}) {
    return _ChangeLimit(
      value: value,
    );
  }

  _ChangeDateUnixMsThreshold changeDateUnixMsThreshold({required int? value}) {
    return _ChangeDateUnixMsThreshold(
      value: value,
    );
  }

  _FetchAnnouncements fetchAnnouncements() {
    return const _FetchAnnouncements();
  }

  _AddAnnouncement addAnnouncement({required AnnouncementModel value}) {
    return _AddAnnouncement(
      value: value,
    );
  }

  _RemoveAnnouncementById removeAnnouncementById({required String value}) {
    return _RemoveAnnouncementById(
      value: value,
    );
  }

  _ModifyAnnouncement modifyAnnouncementById({required String id, required Map<String, dynamic>? data}) {
    return _ModifyAnnouncement(
      id: id,
      data: data,
    );
  }

  _AddAnnouncementList addAnnouncementList({required Iterable<AnnouncementModel> value, required bool toTop}) {
    return _AddAnnouncementList(
      value: value,
      toTop: toTop,
    );
  }

  _MarkAsRead markAsRead({required List<String> ids}) {
    return _MarkAsRead(
      ids: ids,
    );
  }

  _ClearUnread clearUnread() {
    return const _ClearUnread();
  }

  _ClearDraft clearDraftContent() {
    return const _ClearDraft();
  }

  _SaveDraftContent saveDraftContent({String? title, String? content}) {
    return _SaveDraftContent(
      title: title,
      content: content,
    );
  }

  _SaveDraftCheckedGroups saveDraftCheckedGroups({Set<String> groups = const <String>{}}) {
    return _SaveDraftCheckedGroups(
      groups: groups,
    );
  }

  _ChangeDraftPublishToTop changeDraftPublishToTop({required bool value}) {
    return _ChangeDraftPublishToTop(
      value: value,
    );
  }

  _ChangePublishLoading changePublishLoading({required bool value}) {
    return _ChangePublishLoading(
      value: value,
    );
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
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
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
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
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
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
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
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return changeLoading(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
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
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return changeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
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
abstract class _$ChangeFirstLoadingCopyWith<$Res> {
  factory _$ChangeFirstLoadingCopyWith(_ChangeFirstLoading value, $Res Function(_ChangeFirstLoading) then) =
      __$ChangeFirstLoadingCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$ChangeFirstLoadingCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
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
    return 'AnnouncementAction.changeFirstLoading(value: $value)';
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
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return changeFirstLoading(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
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
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return changeFirstLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (changeFirstLoading != null) {
      return changeFirstLoading(this);
    }
    return orElse();
  }
}

abstract class _ChangeFirstLoading implements AnnouncementAction {
  const factory _ChangeFirstLoading({required bool value}) = _$_ChangeFirstLoading;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeFirstLoadingCopyWith<_ChangeFirstLoading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetErrorModelCopyWith<$Res> {
  factory _$SetErrorModelCopyWith(_SetErrorModel value, $Res Function(_SetErrorModel) then) =
      __$SetErrorModelCopyWithImpl<$Res>;
  $Res call({ErrorModel value});

  $ErrorModelCopyWith<$Res> get value;
}

/// @nodoc
class __$SetErrorModelCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$SetErrorModelCopyWith<$Res> {
  __$SetErrorModelCopyWithImpl(_SetErrorModel _value, $Res Function(_SetErrorModel) _then)
      : super(_value, (v) => _then(v as _SetErrorModel));

  @override
  _SetErrorModel get _value => super._value as _SetErrorModel;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_SetErrorModel(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }

  @override
  $ErrorModelCopyWith<$Res> get value {
    return $ErrorModelCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$_SetErrorModel implements _SetErrorModel {
  const _$_SetErrorModel({required this.value});

  @override
  final ErrorModel value;

  @override
  String toString() {
    return 'AnnouncementAction.setErrorModel(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetErrorModel &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$SetErrorModelCopyWith<_SetErrorModel> get copyWith =>
      __$SetErrorModelCopyWithImpl<_SetErrorModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return setErrorModel(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (setErrorModel != null) {
      return setErrorModel(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return setErrorModel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (setErrorModel != null) {
      return setErrorModel(this);
    }
    return orElse();
  }
}

abstract class _SetErrorModel implements AnnouncementAction {
  const factory _SetErrorModel({required ErrorModel value}) = _$_SetErrorModel;

  ErrorModel get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetErrorModelCopyWith<_SetErrorModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearErrorModelCopyWith<$Res> {
  factory _$ClearErrorModelCopyWith(_ClearErrorModel value, $Res Function(_ClearErrorModel) then) =
      __$ClearErrorModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearErrorModelCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$ClearErrorModelCopyWith<$Res> {
  __$ClearErrorModelCopyWithImpl(_ClearErrorModel _value, $Res Function(_ClearErrorModel) _then)
      : super(_value, (v) => _then(v as _ClearErrorModel));

  @override
  _ClearErrorModel get _value => super._value as _ClearErrorModel;
}

/// @nodoc

class _$_ClearErrorModel implements _ClearErrorModel {
  const _$_ClearErrorModel();

  @override
  String toString() {
    return 'AnnouncementAction.clearErrorModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClearErrorModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return clearErrorModel();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (clearErrorModel != null) {
      return clearErrorModel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return clearErrorModel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (clearErrorModel != null) {
      return clearErrorModel(this);
    }
    return orElse();
  }
}

abstract class _ClearErrorModel implements AnnouncementAction {
  const factory _ClearErrorModel() = _$_ClearErrorModel;
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
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return cleanUp();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
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
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return cleanUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
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

/// @nodoc
abstract class _$ChangeLimitCopyWith<$Res> {
  factory _$ChangeLimitCopyWith(_ChangeLimit value, $Res Function(_ChangeLimit) then) =
      __$ChangeLimitCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class __$ChangeLimitCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$ChangeLimitCopyWith<$Res> {
  __$ChangeLimitCopyWithImpl(_ChangeLimit _value, $Res Function(_ChangeLimit) _then)
      : super(_value, (v) => _then(v as _ChangeLimit));

  @override
  _ChangeLimit get _value => super._value as _ChangeLimit;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ChangeLimit(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeLimit implements _ChangeLimit {
  const _$_ChangeLimit({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'AnnouncementAction.changeLimit(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeLimit &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ChangeLimitCopyWith<_ChangeLimit> get copyWith => __$ChangeLimitCopyWithImpl<_ChangeLimit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return changeLimit(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (changeLimit != null) {
      return changeLimit(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return changeLimit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (changeLimit != null) {
      return changeLimit(this);
    }
    return orElse();
  }
}

abstract class _ChangeLimit implements AnnouncementAction {
  const factory _ChangeLimit({required int value}) = _$_ChangeLimit;

  int get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeLimitCopyWith<_ChangeLimit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeDateUnixMsThresholdCopyWith<$Res> {
  factory _$ChangeDateUnixMsThresholdCopyWith(
          _ChangeDateUnixMsThreshold value, $Res Function(_ChangeDateUnixMsThreshold) then) =
      __$ChangeDateUnixMsThresholdCopyWithImpl<$Res>;
  $Res call({int? value});
}

/// @nodoc
class __$ChangeDateUnixMsThresholdCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$ChangeDateUnixMsThresholdCopyWith<$Res> {
  __$ChangeDateUnixMsThresholdCopyWithImpl(
      _ChangeDateUnixMsThreshold _value, $Res Function(_ChangeDateUnixMsThreshold) _then)
      : super(_value, (v) => _then(v as _ChangeDateUnixMsThreshold));

  @override
  _ChangeDateUnixMsThreshold get _value => super._value as _ChangeDateUnixMsThreshold;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ChangeDateUnixMsThreshold(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ChangeDateUnixMsThreshold implements _ChangeDateUnixMsThreshold {
  const _$_ChangeDateUnixMsThreshold({required this.value});

  @override
  final int? value;

  @override
  String toString() {
    return 'AnnouncementAction.changeDateUnixMsThreshold(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeDateUnixMsThreshold &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ChangeDateUnixMsThresholdCopyWith<_ChangeDateUnixMsThreshold> get copyWith =>
      __$ChangeDateUnixMsThresholdCopyWithImpl<_ChangeDateUnixMsThreshold>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return changeDateUnixMsThreshold(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (changeDateUnixMsThreshold != null) {
      return changeDateUnixMsThreshold(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return changeDateUnixMsThreshold(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (changeDateUnixMsThreshold != null) {
      return changeDateUnixMsThreshold(this);
    }
    return orElse();
  }
}

abstract class _ChangeDateUnixMsThreshold implements AnnouncementAction {
  const factory _ChangeDateUnixMsThreshold({required int? value}) = _$_ChangeDateUnixMsThreshold;

  int? get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeDateUnixMsThresholdCopyWith<_ChangeDateUnixMsThreshold> get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return fetchAnnouncements();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
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
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return fetchAnnouncements(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
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
abstract class _$AddAnnouncementCopyWith<$Res> {
  factory _$AddAnnouncementCopyWith(_AddAnnouncement value, $Res Function(_AddAnnouncement) then) =
      __$AddAnnouncementCopyWithImpl<$Res>;
  $Res call({AnnouncementModel value});

  $AnnouncementModelCopyWith<$Res> get value;
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
    Object? value = freezed,
  }) {
    return _then(_AddAnnouncement(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as AnnouncementModel,
    ));
  }

  @override
  $AnnouncementModelCopyWith<$Res> get value {
    return $AnnouncementModelCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$_AddAnnouncement implements _AddAnnouncement {
  const _$_AddAnnouncement({required this.value});

  @override
  final AnnouncementModel value;

  @override
  String toString() {
    return 'AnnouncementAction.addAnnouncement(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddAnnouncement &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$AddAnnouncementCopyWith<_AddAnnouncement> get copyWith =>
      __$AddAnnouncementCopyWithImpl<_AddAnnouncement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return addAnnouncement(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (addAnnouncement != null) {
      return addAnnouncement(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return addAnnouncement(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (addAnnouncement != null) {
      return addAnnouncement(this);
    }
    return orElse();
  }
}

abstract class _AddAnnouncement implements AnnouncementAction {
  const factory _AddAnnouncement({required AnnouncementModel value}) = _$_AddAnnouncement;

  AnnouncementModel get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddAnnouncementCopyWith<_AddAnnouncement> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveAnnouncementByIdCopyWith<$Res> {
  factory _$RemoveAnnouncementByIdCopyWith(_RemoveAnnouncementById value, $Res Function(_RemoveAnnouncementById) then) =
      __$RemoveAnnouncementByIdCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$RemoveAnnouncementByIdCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$RemoveAnnouncementByIdCopyWith<$Res> {
  __$RemoveAnnouncementByIdCopyWithImpl(_RemoveAnnouncementById _value, $Res Function(_RemoveAnnouncementById) _then)
      : super(_value, (v) => _then(v as _RemoveAnnouncementById));

  @override
  _RemoveAnnouncementById get _value => super._value as _RemoveAnnouncementById;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_RemoveAnnouncementById(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveAnnouncementById implements _RemoveAnnouncementById {
  const _$_RemoveAnnouncementById({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'AnnouncementAction.removeAnnouncementById(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveAnnouncementById &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$RemoveAnnouncementByIdCopyWith<_RemoveAnnouncementById> get copyWith =>
      __$RemoveAnnouncementByIdCopyWithImpl<_RemoveAnnouncementById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return removeAnnouncementById(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (removeAnnouncementById != null) {
      return removeAnnouncementById(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return removeAnnouncementById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (removeAnnouncementById != null) {
      return removeAnnouncementById(this);
    }
    return orElse();
  }
}

abstract class _RemoveAnnouncementById implements AnnouncementAction {
  const factory _RemoveAnnouncementById({required String value}) = _$_RemoveAnnouncementById;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoveAnnouncementByIdCopyWith<_RemoveAnnouncementById> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ModifyAnnouncementCopyWith<$Res> {
  factory _$ModifyAnnouncementCopyWith(_ModifyAnnouncement value, $Res Function(_ModifyAnnouncement) then) =
      __$ModifyAnnouncementCopyWithImpl<$Res>;
  $Res call({String id, Map<String, dynamic>? data});
}

/// @nodoc
class __$ModifyAnnouncementCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$ModifyAnnouncementCopyWith<$Res> {
  __$ModifyAnnouncementCopyWithImpl(_ModifyAnnouncement _value, $Res Function(_ModifyAnnouncement) _then)
      : super(_value, (v) => _then(v as _ModifyAnnouncement));

  @override
  _ModifyAnnouncement get _value => super._value as _ModifyAnnouncement;

  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
  }) {
    return _then(_ModifyAnnouncement(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$_ModifyAnnouncement implements _ModifyAnnouncement {
  const _$_ModifyAnnouncement({required this.id, required this.data});

  @override
  final String id;
  @override
  final Map<String, dynamic>? data;

  @override
  String toString() {
    return 'AnnouncementAction.modifyAnnouncementById(id: $id, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModifyAnnouncement &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.data, data) || const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id) ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ModifyAnnouncementCopyWith<_ModifyAnnouncement> get copyWith =>
      __$ModifyAnnouncementCopyWithImpl<_ModifyAnnouncement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return modifyAnnouncementById(id, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (modifyAnnouncementById != null) {
      return modifyAnnouncementById(id, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return modifyAnnouncementById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (modifyAnnouncementById != null) {
      return modifyAnnouncementById(this);
    }
    return orElse();
  }
}

abstract class _ModifyAnnouncement implements AnnouncementAction {
  const factory _ModifyAnnouncement({required String id, required Map<String, dynamic>? data}) = _$_ModifyAnnouncement;

  String get id => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ModifyAnnouncementCopyWith<_ModifyAnnouncement> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddAnnouncementListCopyWith<$Res> {
  factory _$AddAnnouncementListCopyWith(_AddAnnouncementList value, $Res Function(_AddAnnouncementList) then) =
      __$AddAnnouncementListCopyWithImpl<$Res>;
  $Res call({Iterable<AnnouncementModel> value, bool toTop});
}

/// @nodoc
class __$AddAnnouncementListCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$AddAnnouncementListCopyWith<$Res> {
  __$AddAnnouncementListCopyWithImpl(_AddAnnouncementList _value, $Res Function(_AddAnnouncementList) _then)
      : super(_value, (v) => _then(v as _AddAnnouncementList));

  @override
  _AddAnnouncementList get _value => super._value as _AddAnnouncementList;

  @override
  $Res call({
    Object? value = freezed,
    Object? toTop = freezed,
  }) {
    return _then(_AddAnnouncementList(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Iterable<AnnouncementModel>,
      toTop: toTop == freezed
          ? _value.toTop
          : toTop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddAnnouncementList implements _AddAnnouncementList {
  const _$_AddAnnouncementList({required this.value, required this.toTop});

  @override
  final Iterable<AnnouncementModel> value;
  @override
  final bool toTop;

  @override
  String toString() {
    return 'AnnouncementAction.addAnnouncementList(value: $value, toTop: $toTop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddAnnouncementList &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.toTop, toTop) || const DeepCollectionEquality().equals(other.toTop, toTop)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value) ^ const DeepCollectionEquality().hash(toTop);

  @JsonKey(ignore: true)
  @override
  _$AddAnnouncementListCopyWith<_AddAnnouncementList> get copyWith =>
      __$AddAnnouncementListCopyWithImpl<_AddAnnouncementList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return addAnnouncementList(value, toTop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (addAnnouncementList != null) {
      return addAnnouncementList(value, toTop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return addAnnouncementList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (addAnnouncementList != null) {
      return addAnnouncementList(this);
    }
    return orElse();
  }
}

abstract class _AddAnnouncementList implements AnnouncementAction {
  const factory _AddAnnouncementList({required Iterable<AnnouncementModel> value, required bool toTop}) =
      _$_AddAnnouncementList;

  Iterable<AnnouncementModel> get value => throw _privateConstructorUsedError;
  bool get toTop => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddAnnouncementListCopyWith<_AddAnnouncementList> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MarkAsReadCopyWith<$Res> {
  factory _$MarkAsReadCopyWith(_MarkAsRead value, $Res Function(_MarkAsRead) then) = __$MarkAsReadCopyWithImpl<$Res>;
  $Res call({List<String> ids});
}

/// @nodoc
class __$MarkAsReadCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$MarkAsReadCopyWith<$Res> {
  __$MarkAsReadCopyWithImpl(_MarkAsRead _value, $Res Function(_MarkAsRead) _then)
      : super(_value, (v) => _then(v as _MarkAsRead));

  @override
  _MarkAsRead get _value => super._value as _MarkAsRead;

  @override
  $Res call({
    Object? ids = freezed,
  }) {
    return _then(_MarkAsRead(
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_MarkAsRead implements _MarkAsRead {
  const _$_MarkAsRead({required this.ids});

  @override
  final List<String> ids;

  @override
  String toString() {
    return 'AnnouncementAction.markAsRead(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarkAsRead && (identical(other.ids, ids) || const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(ids);

  @JsonKey(ignore: true)
  @override
  _$MarkAsReadCopyWith<_MarkAsRead> get copyWith => __$MarkAsReadCopyWithImpl<_MarkAsRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return markAsRead(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return markAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkAsRead implements AnnouncementAction {
  const factory _MarkAsRead({required List<String> ids}) = _$_MarkAsRead;

  List<String> get ids => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MarkAsReadCopyWith<_MarkAsRead> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearUnreadCopyWith<$Res> {
  factory _$ClearUnreadCopyWith(_ClearUnread value, $Res Function(_ClearUnread) then) =
      __$ClearUnreadCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearUnreadCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$ClearUnreadCopyWith<$Res> {
  __$ClearUnreadCopyWithImpl(_ClearUnread _value, $Res Function(_ClearUnread) _then)
      : super(_value, (v) => _then(v as _ClearUnread));

  @override
  _ClearUnread get _value => super._value as _ClearUnread;
}

/// @nodoc

class _$_ClearUnread implements _ClearUnread {
  const _$_ClearUnread();

  @override
  String toString() {
    return 'AnnouncementAction.clearUnread()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClearUnread);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return clearUnread();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (clearUnread != null) {
      return clearUnread();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return clearUnread(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (clearUnread != null) {
      return clearUnread(this);
    }
    return orElse();
  }
}

abstract class _ClearUnread implements AnnouncementAction {
  const factory _ClearUnread() = _$_ClearUnread;
}

/// @nodoc
abstract class _$ClearDraftCopyWith<$Res> {
  factory _$ClearDraftCopyWith(_ClearDraft value, $Res Function(_ClearDraft) then) = __$ClearDraftCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearDraftCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$ClearDraftCopyWith<$Res> {
  __$ClearDraftCopyWithImpl(_ClearDraft _value, $Res Function(_ClearDraft) _then)
      : super(_value, (v) => _then(v as _ClearDraft));

  @override
  _ClearDraft get _value => super._value as _ClearDraft;
}

/// @nodoc

class _$_ClearDraft implements _ClearDraft {
  const _$_ClearDraft();

  @override
  String toString() {
    return 'AnnouncementAction.clearDraftContent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClearDraft);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return clearDraftContent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (clearDraftContent != null) {
      return clearDraftContent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return clearDraftContent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (clearDraftContent != null) {
      return clearDraftContent(this);
    }
    return orElse();
  }
}

abstract class _ClearDraft implements AnnouncementAction {
  const factory _ClearDraft() = _$_ClearDraft;
}

/// @nodoc
abstract class _$SaveDraftContentCopyWith<$Res> {
  factory _$SaveDraftContentCopyWith(_SaveDraftContent value, $Res Function(_SaveDraftContent) then) =
      __$SaveDraftContentCopyWithImpl<$Res>;
  $Res call({String? title, String? content});
}

/// @nodoc
class __$SaveDraftContentCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$SaveDraftContentCopyWith<$Res> {
  __$SaveDraftContentCopyWithImpl(_SaveDraftContent _value, $Res Function(_SaveDraftContent) _then)
      : super(_value, (v) => _then(v as _SaveDraftContent));

  @override
  _SaveDraftContent get _value => super._value as _SaveDraftContent;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_SaveDraftContent(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SaveDraftContent implements _SaveDraftContent {
  const _$_SaveDraftContent({this.title, this.content});

  @override
  final String? title;
  @override
  final String? content;

  @override
  String toString() {
    return 'AnnouncementAction.saveDraftContent(title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveDraftContent &&
            (identical(other.title, title) || const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) || const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title) ^ const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  _$SaveDraftContentCopyWith<_SaveDraftContent> get copyWith =>
      __$SaveDraftContentCopyWithImpl<_SaveDraftContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return saveDraftContent(title, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (saveDraftContent != null) {
      return saveDraftContent(title, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return saveDraftContent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (saveDraftContent != null) {
      return saveDraftContent(this);
    }
    return orElse();
  }
}

abstract class _SaveDraftContent implements AnnouncementAction {
  const factory _SaveDraftContent({String? title, String? content}) = _$_SaveDraftContent;

  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SaveDraftContentCopyWith<_SaveDraftContent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveDraftCheckedGroupsCopyWith<$Res> {
  factory _$SaveDraftCheckedGroupsCopyWith(_SaveDraftCheckedGroups value, $Res Function(_SaveDraftCheckedGroups) then) =
      __$SaveDraftCheckedGroupsCopyWithImpl<$Res>;
  $Res call({Set<String> groups});
}

/// @nodoc
class __$SaveDraftCheckedGroupsCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$SaveDraftCheckedGroupsCopyWith<$Res> {
  __$SaveDraftCheckedGroupsCopyWithImpl(_SaveDraftCheckedGroups _value, $Res Function(_SaveDraftCheckedGroups) _then)
      : super(_value, (v) => _then(v as _SaveDraftCheckedGroups));

  @override
  _SaveDraftCheckedGroups get _value => super._value as _SaveDraftCheckedGroups;

  @override
  $Res call({
    Object? groups = freezed,
  }) {
    return _then(_SaveDraftCheckedGroups(
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$_SaveDraftCheckedGroups implements _SaveDraftCheckedGroups {
  const _$_SaveDraftCheckedGroups({this.groups = const <String>{}});

  @JsonKey(defaultValue: const <String>{})
  @override
  final Set<String> groups;

  @override
  String toString() {
    return 'AnnouncementAction.saveDraftCheckedGroups(groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveDraftCheckedGroups &&
            (identical(other.groups, groups) || const DeepCollectionEquality().equals(other.groups, groups)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(groups);

  @JsonKey(ignore: true)
  @override
  _$SaveDraftCheckedGroupsCopyWith<_SaveDraftCheckedGroups> get copyWith =>
      __$SaveDraftCheckedGroupsCopyWithImpl<_SaveDraftCheckedGroups>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return saveDraftCheckedGroups(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (saveDraftCheckedGroups != null) {
      return saveDraftCheckedGroups(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return saveDraftCheckedGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (saveDraftCheckedGroups != null) {
      return saveDraftCheckedGroups(this);
    }
    return orElse();
  }
}

abstract class _SaveDraftCheckedGroups implements AnnouncementAction {
  const factory _SaveDraftCheckedGroups({Set<String> groups}) = _$_SaveDraftCheckedGroups;

  Set<String> get groups => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SaveDraftCheckedGroupsCopyWith<_SaveDraftCheckedGroups> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeDraftPublishToTopCopyWith<$Res> {
  factory _$ChangeDraftPublishToTopCopyWith(
          _ChangeDraftPublishToTop value, $Res Function(_ChangeDraftPublishToTop) then) =
      __$ChangeDraftPublishToTopCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$ChangeDraftPublishToTopCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$ChangeDraftPublishToTopCopyWith<$Res> {
  __$ChangeDraftPublishToTopCopyWithImpl(_ChangeDraftPublishToTop _value, $Res Function(_ChangeDraftPublishToTop) _then)
      : super(_value, (v) => _then(v as _ChangeDraftPublishToTop));

  @override
  _ChangeDraftPublishToTop get _value => super._value as _ChangeDraftPublishToTop;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ChangeDraftPublishToTop(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeDraftPublishToTop implements _ChangeDraftPublishToTop {
  const _$_ChangeDraftPublishToTop({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'AnnouncementAction.changeDraftPublishToTop(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeDraftPublishToTop &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ChangeDraftPublishToTopCopyWith<_ChangeDraftPublishToTop> get copyWith =>
      __$ChangeDraftPublishToTopCopyWithImpl<_ChangeDraftPublishToTop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return changeDraftPublishToTop(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (changeDraftPublishToTop != null) {
      return changeDraftPublishToTop(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return changeDraftPublishToTop(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (changeDraftPublishToTop != null) {
      return changeDraftPublishToTop(this);
    }
    return orElse();
  }
}

abstract class _ChangeDraftPublishToTop implements AnnouncementAction {
  const factory _ChangeDraftPublishToTop({required bool value}) = _$_ChangeDraftPublishToTop;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeDraftPublishToTopCopyWith<_ChangeDraftPublishToTop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangePublishLoadingCopyWith<$Res> {
  factory _$ChangePublishLoadingCopyWith(_ChangePublishLoading value, $Res Function(_ChangePublishLoading) then) =
      __$ChangePublishLoadingCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$ChangePublishLoadingCopyWithImpl<$Res> extends _$AnnouncementActionCopyWithImpl<$Res>
    implements _$ChangePublishLoadingCopyWith<$Res> {
  __$ChangePublishLoadingCopyWithImpl(_ChangePublishLoading _value, $Res Function(_ChangePublishLoading) _then)
      : super(_value, (v) => _then(v as _ChangePublishLoading));

  @override
  _ChangePublishLoading get _value => super._value as _ChangePublishLoading;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ChangePublishLoading(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangePublishLoading implements _ChangePublishLoading {
  const _$_ChangePublishLoading({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'AnnouncementAction.changePublishLoading(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePublishLoading &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ChangePublishLoadingCopyWith<_ChangePublishLoading> get copyWith =>
      __$ChangePublishLoadingCopyWithImpl<_ChangePublishLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(bool value) changeLoading,
    required TResult Function(bool value) changeFirstLoading,
    required TResult Function(ErrorModel value) setErrorModel,
    required TResult Function() clearErrorModel,
    required TResult Function() cleanUp,
    required TResult Function(int value) changeLimit,
    required TResult Function(int? value) changeDateUnixMsThreshold,
    required TResult Function() fetchAnnouncements,
    required TResult Function(AnnouncementModel value) addAnnouncement,
    required TResult Function(String value) removeAnnouncementById,
    required TResult Function(String id, Map<String, dynamic>? data) modifyAnnouncementById,
    required TResult Function(Iterable<AnnouncementModel> value, bool toTop) addAnnouncementList,
    required TResult Function(List<String> ids) markAsRead,
    required TResult Function() clearUnread,
    required TResult Function() clearDraftContent,
    required TResult Function(String? title, String? content) saveDraftContent,
    required TResult Function(Set<String> groups) saveDraftCheckedGroups,
    required TResult Function(bool value) changeDraftPublishToTop,
    required TResult Function(bool value) changePublishLoading,
  }) {
    return changePublishLoading(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(bool value)? changeLoading,
    TResult Function(bool value)? changeFirstLoading,
    TResult Function(ErrorModel value)? setErrorModel,
    TResult Function()? clearErrorModel,
    TResult Function()? cleanUp,
    TResult Function(int value)? changeLimit,
    TResult Function(int? value)? changeDateUnixMsThreshold,
    TResult Function()? fetchAnnouncements,
    TResult Function(AnnouncementModel value)? addAnnouncement,
    TResult Function(String value)? removeAnnouncementById,
    TResult Function(String id, Map<String, dynamic>? data)? modifyAnnouncementById,
    TResult Function(Iterable<AnnouncementModel> value, bool toTop)? addAnnouncementList,
    TResult Function(List<String> ids)? markAsRead,
    TResult Function()? clearUnread,
    TResult Function()? clearDraftContent,
    TResult Function(String? title, String? content)? saveDraftContent,
    TResult Function(Set<String> groups)? saveDraftCheckedGroups,
    TResult Function(bool value)? changeDraftPublishToTop,
    TResult Function(bool value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (changePublishLoading != null) {
      return changePublishLoading(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_ChangeLoading value) changeLoading,
    required TResult Function(_ChangeFirstLoading value) changeFirstLoading,
    required TResult Function(_SetErrorModel value) setErrorModel,
    required TResult Function(_ClearErrorModel value) clearErrorModel,
    required TResult Function(_CleanUp value) cleanUp,
    required TResult Function(_ChangeLimit value) changeLimit,
    required TResult Function(_ChangeDateUnixMsThreshold value) changeDateUnixMsThreshold,
    required TResult Function(_FetchAnnouncements value) fetchAnnouncements,
    required TResult Function(_AddAnnouncement value) addAnnouncement,
    required TResult Function(_RemoveAnnouncementById value) removeAnnouncementById,
    required TResult Function(_ModifyAnnouncement value) modifyAnnouncementById,
    required TResult Function(_AddAnnouncementList value) addAnnouncementList,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_ClearUnread value) clearUnread,
    required TResult Function(_ClearDraft value) clearDraftContent,
    required TResult Function(_SaveDraftContent value) saveDraftContent,
    required TResult Function(_SaveDraftCheckedGroups value) saveDraftCheckedGroups,
    required TResult Function(_ChangeDraftPublishToTop value) changeDraftPublishToTop,
    required TResult Function(_ChangePublishLoading value) changePublishLoading,
  }) {
    return changePublishLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_ChangeLoading value)? changeLoading,
    TResult Function(_ChangeFirstLoading value)? changeFirstLoading,
    TResult Function(_SetErrorModel value)? setErrorModel,
    TResult Function(_ClearErrorModel value)? clearErrorModel,
    TResult Function(_CleanUp value)? cleanUp,
    TResult Function(_ChangeLimit value)? changeLimit,
    TResult Function(_ChangeDateUnixMsThreshold value)? changeDateUnixMsThreshold,
    TResult Function(_FetchAnnouncements value)? fetchAnnouncements,
    TResult Function(_AddAnnouncement value)? addAnnouncement,
    TResult Function(_RemoveAnnouncementById value)? removeAnnouncementById,
    TResult Function(_ModifyAnnouncement value)? modifyAnnouncementById,
    TResult Function(_AddAnnouncementList value)? addAnnouncementList,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_ClearUnread value)? clearUnread,
    TResult Function(_ClearDraft value)? clearDraftContent,
    TResult Function(_SaveDraftContent value)? saveDraftContent,
    TResult Function(_SaveDraftCheckedGroups value)? saveDraftCheckedGroups,
    TResult Function(_ChangeDraftPublishToTop value)? changeDraftPublishToTop,
    TResult Function(_ChangePublishLoading value)? changePublishLoading,
    required TResult orElse(),
  }) {
    if (changePublishLoading != null) {
      return changePublishLoading(this);
    }
    return orElse();
  }
}

abstract class _ChangePublishLoading implements AnnouncementAction {
  const factory _ChangePublishLoading({required bool value}) = _$_ChangePublishLoading;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangePublishLoadingCopyWith<_ChangePublishLoading> get copyWith => throw _privateConstructorUsedError;
}
