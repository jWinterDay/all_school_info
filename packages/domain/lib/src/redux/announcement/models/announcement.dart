import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement.freezed.dart';
part 'announcement.g.dart';

const String defaultUserGroup = 'broadcast';

@freezed
class Announcement with _$Announcement {
  const Announcement._();

  const factory Announcement({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'user_groups', defaultValue: <String>[defaultUserGroup])
    @Default(<String>[defaultUserGroup])
        List<String> userGroups,
  }) = _Announcement;

  factory Announcement.fromJson(Map<String, dynamic> json) => _$AnnouncementFromJson(json);
}
