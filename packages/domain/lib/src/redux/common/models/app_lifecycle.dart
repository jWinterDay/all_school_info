import 'package:json_annotation/json_annotation.dart';

enum AppLifecycle {
  @JsonValue('resumed')
  resumed,

  @JsonValue('inactive')
  inactive,

  @JsonValue('paused')
  paused,

  @JsonValue('detached')
  detached,

  @JsonValue('none')
  none,
}
