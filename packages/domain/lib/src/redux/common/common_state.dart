import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/app_lifecycle.dart';

part 'common_state.freezed.dart';
part 'common_state.g.dart';

@freezed
class CommonState with _$CommonState {
  const CommonState._();

  const factory CommonState({
    @JsonKey(name: 'top_announcement_count', defaultValue: 5) @Default(5) int topAnnouncementCount,
    @JsonKey(name: 'app_lifecycle', defaultValue: AppLifecycle.none)
    @Default(AppLifecycle.none)
        AppLifecycle appLifecycle,
  }) = _CommonState;

  factory CommonState.fromJson(Map<String, dynamic> json) => _$CommonStateFromJson(json);
}
