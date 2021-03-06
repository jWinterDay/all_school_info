import 'package:domain/src/models/error_model.dart';
import 'package:domain/src/redux/common/models/collection_add_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/announcement_model.dart';

part 'announcement_action.freezed.dart';

@freezed
class AnnouncementAction with _$AnnouncementAction {
  const factory AnnouncementAction.start() = _Start;

  /// `common`
  const factory AnnouncementAction.changeLoading({required bool value}) = _ChangeLoading;
  const factory AnnouncementAction.changeFirstLoading({required bool value}) = _ChangeFirstLoading;
  const factory AnnouncementAction.setErrorModel({required ErrorModel value}) = _SetErrorModel;
  const factory AnnouncementAction.clearErrorModel() = _ClearErrorModel;
  const factory AnnouncementAction.cleanUp() = _CleanUp;

  /// `announcements`
  const factory AnnouncementAction.changeLimit({required int value}) = _ChangeLimit;
  const factory AnnouncementAction.changeDateUnixMsThreshold({required int? value}) = _ChangeDateUnixMsThreshold;
  const factory AnnouncementAction.fetchAnnouncements() = _FetchAnnouncements;
  const factory AnnouncementAction.addAnnouncement({required AnnouncementModel value}) = _AddAnnouncement;
  const factory AnnouncementAction.removeAnnouncementById({required String value}) = _RemoveAnnouncementById;
  const factory AnnouncementAction.modifyAnnouncementById({required String id, required Map<String, dynamic>? data}) =
      _ModifyAnnouncement;
  const factory AnnouncementAction.addAnnouncementList({
    required Iterable<AnnouncementModel> value,
    required CollectionAddType collectionAddType,
  }) = _AddAnnouncementList;
  const factory AnnouncementAction.markAsRead({required List<String> ids}) = _MarkAsRead;
  const factory AnnouncementAction.clearUnread() = _ClearUnread; // clear all unread items

  /// `saved draft of new announcement`
  const factory AnnouncementAction.clearDraftContent() = _ClearDraft;
  const factory AnnouncementAction.saveDraftContent({
    String? title,
    String? content,
  }) = _SaveDraftContent;
  const factory AnnouncementAction.saveDraftCheckedGroups({@Default(<String>{}) Set<String> groups}) =
      _SaveDraftCheckedGroups;
  const factory AnnouncementAction.changeDraftPublishToTop({required bool value}) = _ChangeDraftPublishToTop;

  /// `add, modify, remove announcement`
  const factory AnnouncementAction.changePublishLoading({required bool value}) = _ChangePublishLoading;
}
