import 'package:domain/src/models/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/announcement_model.dart';

part 'announcement_state.freezed.dart';
part 'announcement_state.g.dart';

@freezed
class AnnouncementState with _$AnnouncementState {
  const AnnouncementState._();

  const factory AnnouncementState({
    /// `common`
    @JsonKey(name: 'last_datetime_read_list_unix_ms') int? lastDatetimeReadListUnixMs,
    @JsonKey(name: 'loading', defaultValue: false) @Default(false) bool loading,
    @JsonKey(name: 'first_loading', defaultValue: true) @Default(true) bool firstLoading,
    @JsonKey(name: 'error_model') ErrorModel? errorModel,

    /// `announcement`
    @JsonKey(name: 'limit', defaultValue: 3) @Default(3) int limit,
    @JsonKey(name: 'date_unix_ms_threshold') int? dateUnixMsThreshold,
    @JsonKey(name: 'list', defaultValue: <AnnouncementModel>[])
    @Default(<AnnouncementModel>[])
        List<AnnouncementModel> list,
    @JsonKey(name: 'top_list', defaultValue: <AnnouncementModel>[])
    @Default(<AnnouncementModel>[])
        List<AnnouncementModel> topList,

    // // TODO remove
    // @JsonKey(name: 'unread_list', defaultValue: <AnnouncementModel>[])
    // @Default(<AnnouncementModel>[])
    //     List<AnnouncementModel> unreadList,

    /// `create new announement. save draft of it`
    @JsonKey(name: 'draft_new_title') String? draftNewTitle,
    @JsonKey(name: 'draft_new_content') String? draftNewContent,
    @JsonKey(name: 'draft_new_groups', defaultValue: <String>{}) @Default(<String>{}) Set<String> draftNewGroups,
    @JsonKey(name: 'draft_publish_to_top', defaultValue: false) @Default(false) bool draftPublishToTop,

    /// `flag when add, modify, remove announcement`
    @JsonKey(name: 'publish_loading', defaultValue: false) @Default(false) bool publishLoading,
  }) = _AnnouncementState;

  factory AnnouncementState.fromJson(Map<String, dynamic> json) => _$AnnouncementStateFromJson(json);

  bool get publishButtonAvailable {
    if (draftNewTitle == null && draftNewContent == null) {
      return false;
    }

    return !publishLoading && draftNewGroups.isNotEmpty && draftNewTitle!.isNotEmpty && draftNewContent!.isNotEmpty;
  }

  List<AnnouncementModel> get unreadList {
    return list.where((AnnouncementModel e) {
      return e.isUnread;
    }).toList();
  }
}
