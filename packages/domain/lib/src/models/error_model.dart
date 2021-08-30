import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';
part 'error_model.g.dart';

@freezed
class ErrorModel with _$ErrorModel {
  const ErrorModel._();

  const factory ErrorModel(
    @JsonKey(name: 'code') int code,
    @JsonKey(name: 'message') String message,
  ) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);
}
