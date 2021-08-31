import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_action.freezed.dart';

@freezed
class CommonAction with _$CommonAction {
  const factory CommonAction.topAnnouncementCount({required int value}) = _TopAnnouncementCount;
}
