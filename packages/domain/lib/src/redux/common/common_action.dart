import 'package:domain/src/models/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_action.freezed.dart';

@freezed
class CommonAction with _$CommonAction {
  const factory CommonAction.setErrorModel({required ErrorModel value}) = _SetErrorModel;

  const factory CommonAction.clearErrorModel() = _ClearErrorModel;
}
