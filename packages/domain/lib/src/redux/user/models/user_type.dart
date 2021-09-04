import 'package:json_annotation/json_annotation.dart';

enum UserType {
  @JsonValue('moderator')
  moderator,

  @JsonValue('guest')
  guest,

  @JsonValue('learner')
  learner,

  @JsonValue('teacher')
  teacher,

  @JsonValue('parent')
  parent
}
