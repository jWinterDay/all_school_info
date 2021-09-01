// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnnouncementState _$_$_AnnouncementStateFromJson(Map<String, dynamic> json) {
  return _$_AnnouncementState(
    list:
        (json['list'] as List<dynamic>?)?.map((e) => AnnouncementModel.fromJson(e as Map<String, dynamic>)).toList() ??
            [],
    topList: (json['top_list'] as List<dynamic>?)
            ?.map((e) => AnnouncementModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    loading: json['loading'] as bool? ?? false,
    firstLoading: json['first_loading'] as bool? ?? true,
    errorModel: json['error_model'] == null ? null : ErrorModel.fromJson(json['error_model'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AnnouncementStateToJson(_$_AnnouncementState instance) => <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
      'top_list': instance.topList.map((e) => e.toJson()).toList(),
      'loading': instance.loading,
      'first_loading': instance.firstLoading,
      'error_model': instance.errorModel?.toJson(),
    };
