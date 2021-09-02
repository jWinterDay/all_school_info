import 'package:domain/src/models/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/announcement_model.dart';

part 'announcement_state.freezed.dart';
part 'announcement_state.g.dart';

@freezed
class AnnouncementState with _$AnnouncementState {
  const AnnouncementState._();

  const factory AnnouncementState({
    @JsonKey(name: 'date') int? dateUnixMs,
    @JsonKey(name: 'loading', defaultValue: false) @Default(false) bool loading,
    @JsonKey(name: 'first_loading', defaultValue: true) @Default(true) bool firstLoading,
    @JsonKey(name: 'error_model') ErrorModel? errorModel,
    @JsonKey(name: 'list', defaultValue: <AnnouncementModel>[])
    @Default(<AnnouncementModel>[])
        List<AnnouncementModel> list,
    @JsonKey(name: 'top_list', defaultValue: <AnnouncementModel>[])
    @Default(<AnnouncementModel>[])
        List<AnnouncementModel> topList,
    @JsonKey(name: 'unread_list', defaultValue: <AnnouncementModel>[])
    @Default(<AnnouncementModel>[])
        List<AnnouncementModel> unreadList,
  }) = _AnnouncementState;

  factory AnnouncementState.fromJson(Map<String, dynamic> json) => _$AnnouncementStateFromJson(json);
}
