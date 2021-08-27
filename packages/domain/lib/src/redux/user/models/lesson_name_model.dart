import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_name_model.freezed.dart';
part 'lesson_name_model.g.dart';

const String defaultUserGroup = 'broadcast';

@freezed
class LessonNameModel with _$LessonNameModel {
  const LessonNameModel._();

  const factory LessonNameModel(
    @JsonKey(name: 'id') String id, {
    @JsonKey(name: 'title') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'active', defaultValue: true) @Default(true) bool active,
  }) = _LessonNameModel;

  factory LessonNameModel.fromJson(Map<String, dynamic> json) => _$LessonNameModelFromJson(json);
}
