// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommonState _$_$_CommonStateFromJson(Map<String, dynamic> json) {
  return _$_CommonState(
    errorModel: json['error_model'] == null ? null : ErrorModel.fromJson(json['error_model'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CommonStateToJson(_$_CommonState instance) => <String, dynamic>{
      'error_model': instance.errorModel?.toJson(),
    };
