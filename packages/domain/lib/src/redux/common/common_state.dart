import 'package:domain/src/models/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_state.freezed.dart';
part 'common_state.g.dart';

@freezed
class CommonState with _$CommonState {
  const CommonState._();

  const factory CommonState({
    @JsonKey(name: 'error_model') ErrorModel? errorModel,
  }) = _CommonState;

  factory CommonState.fromJson(Map<String, dynamic> json) => _$CommonStateFromJson(json);
}
