import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_model.freezed.dart';
part 'lesson_model.g.dart';

@freezed
class LessonModel with _$LessonModel {
  const LessonModel._();

  const factory LessonModel(
    @JsonKey(name: 'lesson_name') String lessonName, // TODO guid ????
    @JsonKey(name: 'date_unix_ms') int dateUnixMs,
    @JsonKey(name: 'teacher_name') String teacherName, // TODO guid ????
    //   {
    //   @JsonKey(name: 'date_unix_ms', defaultValue: false) @Default(false) String lessonName,
    // }
  ) = _LessonModel;

  factory LessonModel.fromJson(Map<String, dynamic> json) => _$LessonModelFromJson(json);
}
