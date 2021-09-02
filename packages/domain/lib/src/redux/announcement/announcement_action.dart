import 'package:domain/src/models/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/announcement_model.dart';

part 'announcement_action.freezed.dart';

@freezed
class AnnouncementAction with _$AnnouncementAction {
  const factory AnnouncementAction.start() = _Start;

  // common
  const factory AnnouncementAction.changeLoading({required bool value}) = _ChangeLoading;
  const factory AnnouncementAction.changeFirstLoading({required bool value}) = _ChangeFirstLoading;
  const factory AnnouncementAction.setErrorModel({required ErrorModel value}) = _SetErrorModel;
  const factory AnnouncementAction.clearErrorModel() = _ClearErrorModel;
  const factory AnnouncementAction.cleanUp() = _CleanUp;

  // announcements
  const factory AnnouncementAction.fetchAnnouncements() = _FetchAnnouncements;
  const factory AnnouncementAction.addAnnouncement({required AnnouncementModel value}) = _AddAnnouncement;
  const factory AnnouncementAction.addAnnouncementList({required Iterable<AnnouncementModel> value}) =
      _AddAnnouncementList;

  // unread
  const factory AnnouncementAction.addUnreadAnnouncement({required AnnouncementModel value}) = _AddUnreadAnnouncement;
  const factory AnnouncementAction.removeUnreadAnnouncement({required AnnouncementModel value}) =
      _RemoveUnreadAnnouncement;
  const factory AnnouncementAction.clearUnreadAnnouncements() = _ClearUnreadAnnouncement;
}
