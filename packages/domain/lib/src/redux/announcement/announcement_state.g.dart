// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnnouncementState _$_$_AnnouncementStateFromJson(Map<String, dynamic> json) {
  return _$_AnnouncementState(
    announcementList: (json['announcement_list'] as List<dynamic>?)
        ?.map((e) => AnnouncementModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    loading: json['loading'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_AnnouncementStateToJson(_$_AnnouncementState instance) => <String, dynamic>{
      'announcement_list': instance.announcementList?.map((e) => e.toJson()).toList(),
      'loading': instance.loading,
    };
