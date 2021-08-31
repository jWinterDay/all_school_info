// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnnouncementModel _$_$_AnnouncementModelFromJson(Map<String, dynamic> json) {
  return _$_AnnouncementModel(
    json['id'] as String,
    title: json['title'] as String?,
    content: json['content'] as String?,
    userGroups: (json['user_groups'] as List<dynamic>?)?.map((e) => e as String).toList() ?? ['broadcast'],
    isTopEvent: json['is_top_event'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_AnnouncementModelToJson(_$_AnnouncementModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'user_groups': instance.userGroups,
      'is_top_event': instance.isTopEvent,
    };
