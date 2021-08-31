import 'package:domain/src/models/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/announcement_model.dart';

part 'announcement_state.freezed.dart';
part 'announcement_state.g.dart';

@freezed
class AnnouncementState with _$AnnouncementState {
  const AnnouncementState._();

  const factory AnnouncementState({
    @JsonKey(name: 'announcement_list') List<AnnouncementModel>? announcementList,
    @JsonKey(name: 'loading', defaultValue: false) @Default(false) bool loading,
    @JsonKey(name: 'error_model') ErrorModel? errorModel,
  }) = _AnnouncementState;

  factory AnnouncementState.fromJson(Map<String, dynamic> json) => _$AnnouncementStateFromJson(json);

  List<AnnouncementModel> get topAnnouncements {
    if (announcementList == null) {
      return <AnnouncementModel>[];
    }

    return announcementList!.where((AnnouncementModel item) {
      return item.isTopEvent;
    }).toList();
  }

  bool get isFirstLoading => announcementList == null;

  List<AnnouncementModel> get announcements {
    if (announcementList == null) {
      return <AnnouncementModel>[];
    }

    return announcementList!.where((AnnouncementModel item) {
      return !item.isTopEvent;
    }).toList();
  }
}
