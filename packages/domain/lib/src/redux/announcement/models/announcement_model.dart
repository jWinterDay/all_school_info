import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_model.freezed.dart';
part 'announcement_model.g.dart';

@freezed
class AnnouncementModel with _$AnnouncementModel implements Comparable<AnnouncementModel> {
  const AnnouncementModel._();

  const factory AnnouncementModel(
    @JsonKey(name: 'id') String id, {
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'content') String? content,
    // groups that will be notified
    @JsonKey(name: 'user_groups', defaultValue: <String>[]) @Default(<String>[]) List<String> userGroups,
    @JsonKey(name: 'is_top_event', defaultValue: false) @Default(false) bool isTopEvent,
    @JsonKey(name: 'date_unix_ms') int? dateUnixMs,
    @JsonKey(name: 'is_unread', defaultValue: false) @Default(false) bool isUnread,
    // @JsonKey(ignore: true) @Default(DocumentChangeType.added) DocumentChangeType documentChangeType, // internal,
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
