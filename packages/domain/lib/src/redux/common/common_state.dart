import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_state.freezed.dart';
part 'common_state.g.dart';

@freezed
class CommonState with _$CommonState {
  const CommonState._();

  const factory CommonState({
    @JsonKey(name: 'top_announcement_count', defaultValue: 5) @Default(5) int topAnnouncementCount,
  }) = _CommonState;

  factory CommonState.fromJson(Map<String, dynamic> json) => _$CommonStateFromJson(json);
}
