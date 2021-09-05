// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnnouncementState _$_$_AnnouncementStateFromJson(Map<String, dynamic> json) {
  return _$_AnnouncementState(
    dateUnixMs: json['date'] as int?,
    loading: json['loading'] as bool? ?? false,
    firstLoading: json['first_loading'] as bool? ?? true,
    errorModel: json['error_model'] == null ? null : ErrorModel.fromJson(json['error_model'] as Map<String, dynamic>),
    list:
        (json['list'] as List<dynamic>?)?.map((e) => AnnouncementModel.fromJson(e as Map<String, dynamic>)).toList() ??
            [],
    topList: (json['top_list'] as List<dynamic>?)
            ?.map((e) => AnnouncementModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    unreadList: (json['unread_list'] as List<dynamic>?)
            ?.map((e) => AnnouncementModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    draftNewTitle: json['draft_new_title'] as String?,
    draftNewContent: json['draft_new_content'] as String?,
    draftNewGroups: (json['draft_new_groups'] as List<dynamic>?)?.map((e) => e as String).toSet() ?? {},
    draftPublishToTop: json['draft_publish_to_top'] as bool? ?? false,
    publishLoading: json['publish_loading'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_AnnouncementStateToJson(_$_AnnouncementState instance) => <String, dynamic>{
      'date': instance.dateUnixMs,
      'loading': instance.loading,
      'first_loading': instance.firstLoading,
      'error_model': instance.errorModel?.toJson(),
      'list': instance.list.map((e) => e.toJson()).toList(),
      'top_list': instance.topList.map((e) => e.toJson()).toList(),
      'unread_list': instance.unreadList.map((e) => e.toJson()).toList(),
      'draft_new_title': instance.draftNewTitle,
      'draft_new_content': instance.draftNewContent,
      'draft_new_groups': instance.draftNewGroups.toList(),
      'draft_publish_to_top': instance.draftPublishToTop,
      'publish_loading': instance.publishLoading,
    };
