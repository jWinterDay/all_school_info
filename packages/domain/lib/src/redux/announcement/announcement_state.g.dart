// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnnouncementState _$_$_AnnouncementStateFromJson(Map<String, dynamic> json) {
  return _$_AnnouncementState(
    lastDatetimeReadListUnixMs: json['last_datetime_read_list_unix_ms'] as int?,
    loading: json['loading'] as bool? ?? false,
    firstLoading: json['first_loading'] as bool? ?? true,
    errorModel: json['error_model'] == null ? null : ErrorModel.fromJson(json['error_model'] as Map<String, dynamic>),
    limit: json['limit'] as int? ?? 15,
    dateUnixMsThreshold: json['date_unix_ms_threshold'] as int?,
    list:
        (json['list'] as List<dynamic>?)?.map((e) => AnnouncementModel.fromJson(e as Map<String, dynamic>)).toList() ??
            [],
    topList: (json['top_list'] as List<dynamic>?)
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
      'last_datetime_read_list_unix_ms': instance.lastDatetimeReadListUnixMs,
      'loading': instance.loading,
      'first_loading': instance.firstLoading,
      'error_model': instance.errorModel?.toJson(),
      'limit': instance.limit,
      'date_unix_ms_threshold': instance.dateUnixMsThreshold,
      'list': instance.list.map((e) => e.toJson()).toList(),
      'top_list': instance.topList.map((e) => e.toJson()).toList(),
      'draft_new_title': instance.draftNewTitle,
      'draft_new_content': instance.draftNewContent,
      'draft_new_groups': instance.draftNewGroups.toList(),
      'draft_publish_to_top': instance.draftPublishToTop,
      'publish_loading': instance.publishLoading,
    };
