import 'package:json_annotation/json_annotation.dart';

enum DocApplyType {
  @JsonValue('modified')
  modified,

  @JsonValue('added')
  added,

  @JsonValue('removed')
  removed
}
