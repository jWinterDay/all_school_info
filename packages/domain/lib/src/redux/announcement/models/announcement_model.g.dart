// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnnouncementModel _$_$_AnnouncementModelFromJson(Map<String, dynamic> json) {
  return _$_AnnouncementModel(
    title: json['title'] as String?,
    content: json['content'] as String?,
    userGroups: (json['user_groups'] as List<dynamic>?)?.map((e) => e as String).toList() ?? ['broadcast'],
  );
}

Map<String, dynamic> _$_$_AnnouncementModelToJson(_$_AnnouncementModel instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'user_groups': instance.userGroups,
    };
