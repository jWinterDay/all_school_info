import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_model.freezed.dart';
part 'announcement_model.g.dart';

const String defaultUserGroup = 'broadcast';

@freezed
class AnnouncementModel with _$AnnouncementModel {
  const AnnouncementModel._();

  const factory AnnouncementModel(
    @JsonKey(name: 'id') String id, {
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'user_groups', defaultValue: <String>[defaultUserGroup])
    @Default(<String>[defaultUserGroup])
        List<String> userGroups,
  }) = _AnnouncementModel;

  factory AnnouncementModel.fromJson(Map<String, dynamic> json) => _$AnnouncementModelFromJson(json);
}
