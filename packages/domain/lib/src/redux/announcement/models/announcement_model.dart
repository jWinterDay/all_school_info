import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_model.freezed.dart';
part 'announcement_model.g.dart';

const String defaultUserGroup = 'broadcast';

@freezed
class AnnouncementModel with _$AnnouncementModel implements Comparable<AnnouncementModel> {
  const AnnouncementModel._();

  const factory AnnouncementModel(
    @JsonKey(name: 'id') String id, {
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'user_groups', defaultValue: <String>[defaultUserGroup])
    @Default(<String>[defaultUserGroup])
        List<String> userGroups, // TODO remove
    @JsonKey(name: 'is_top_event', defaultValue: false) @Default(false) bool isTopEvent,
    @JsonKey(name: 'date_unix_ms') int? dateUnixMs,
  }) = _AnnouncementModel;

  factory AnnouncementModel.fromJson(Map<String, dynamic> json) => _$AnnouncementModelFromJson(json);

  @override
  int compareTo(AnnouncementModel other) {
    if (dateUnixMs == null || other.dateUnixMs == null) {
      return 0;
    }

    return (other.dateUnixMs ?? 0).compareTo(this.dateUnixMs ?? 0);
  }
}
