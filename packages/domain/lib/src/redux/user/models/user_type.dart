import 'package:json_annotation/json_annotation.dart';

enum UserType {
  @JsonValue('learner')
  learner,

  @JsonValue('teacher')
  teacher,

  @JsonValue('parent')
  parent
}
