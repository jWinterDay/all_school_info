import 'package:domain/src/redux/common/models/app_lifecycle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_action.freezed.dart';

@freezed
class CommonAction with _$CommonAction {
  const factory CommonAction.topAnnouncementCount({required int value}) = _TopAnnouncementCount;

  const factory CommonAction.changeAppLyfecycle({required AppLifecycle value}) = _ChangeAppLyfecycle;
}
