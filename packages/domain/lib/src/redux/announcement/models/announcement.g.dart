// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Announcement _$_$_AnnouncementFromJson(Map<String, dynamic> json) {
  return _$_Announcement(
    title: json['title'] as String?,
    content: json['content'] as String?,
    userGroups: (json['user_groups'] as List<dynamic>?)?.map((e) => e as String).toList() ?? ['broadcast'],
  );
}

Map<String, dynamic> _$_$_AnnouncementToJson(_$_Announcement instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'user_groups': instance.userGroups,
    };
