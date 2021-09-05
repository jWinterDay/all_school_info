import 'package:domain/src/models/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/announcement_model.dart';

part 'announcement_state.freezed.dart';
part 'announcement_state.g.dart';

@freezed
class AnnouncementState with _$AnnouncementState {
  const AnnouncementState._();

  const factory AnnouncementState({
    @JsonKey(name: 'date') int? dateUnixMs,
    @JsonKey(name: 'loading', defaultValue: false) @Default(false) bool loading,
    @JsonKey(name: 'first_loading', defaultValue: true) @Default(true) bool firstLoading,
    @JsonKey(name: 'error_model') ErrorModel? errorModel,
    @JsonKey(name: 'list', defaultValue: <AnnouncementModel>[])
    @Default(<AnnouncementModel>[])
        List<AnnouncementModel> list,
    @JsonKey(name: 'top_list', defaultValue: <AnnouncementModel>[])
    @Default(<AnnouncementModel>[])
        List<AnnouncementModel> topList,
    @JsonKey(name: 'unread_list', defaultValue: <AnnouncementModel>[])
    @Default(<AnnouncementModel>[])
        List<AnnouncementModel> unreadList,

    // create new announement. save draft of it
    @JsonKey(name: 'draft_new_title') String? draftNewTitle,
    @JsonKey(name: 'draft_new_content') String? draftNewContent,
    @JsonKey(name: 'draft_new_groups', defaultValue: <String>{}) @Default(<String>{}) Set<String> draftNewGroups,
    @JsonKey(name: 'draft_publish_to_top', defaultValue: false) @Default(false) bool draftPublishToTop,

    // add, modify, remove announcement
    @JsonKey(name: 'publish_loading', defaultValue: false) @Default(false) bool publishLoading,
  }) = _AnnouncementState;

  factory AnnouncementState.fromJson(Map<String, dynamic> json) => _$AnnouncementStateFromJson(json);

  bool get publishButtonAvailable {
    if (draftNewTitle == null && draftNewContent == null) {
      return false;
    }

    return !publishLoading && draftNewGroups.isNotEmpty && draftNewTitle!.isNotEmpty && draftNewContent!.isNotEmpty;
  }
}
