import 'common_action.dart';
import 'common_state.dart';

CommonState commonReducer(CommonState s, dynamic a) {
  if (a is CommonAction) {
    return a.maybeMap<CommonState>(
      // ignore: always_specify_types
      topAnnouncementCount: (actionEvent) => s.copyWith(topAnnouncementCount: actionEvent.value),
      // ignore: always_specify_types
      changeAppLyfecycle: (actionEvent) => s.copyWith(appLifecycle: actionEvent.value),
      orElse: () {
        return s;
      },
    );
  }

  return s;
}
