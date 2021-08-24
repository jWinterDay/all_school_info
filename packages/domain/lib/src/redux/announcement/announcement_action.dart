import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/announcement_model.dart';

part 'announcement_action.freezed.dart';

@freezed
abstract class AnnouncementAction with _$AnnouncementAction {
  const factory AnnouncementAction.start() = _Start;

  const factory AnnouncementAction.changeLoading({required bool value}) = _ChangeLoading;

  const factory AnnouncementAction.addAnnouncement({required AnnouncementModel announcement}) = _AddAnnouncement;

  const factory AnnouncementAction.addAnnouncementList({required Iterable<AnnouncementModel> list}) =
      _AddAnnouncementList;

  const factory AnnouncementAction.fetchAnnouncements() = _FetchAnnouncements;

  const factory AnnouncementAction.cleanUp() = _CleanUp;
}
