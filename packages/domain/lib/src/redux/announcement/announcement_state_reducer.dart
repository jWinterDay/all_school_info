import 'announcement_action.dart';
import 'announcement_state.dart';

AnnouncementState announcementStateReducer(AnnouncementState s, dynamic a) {
  if (a is AnnouncementAction) {
    return a.maybeMap<AnnouncementState>(
      // ignore: always_specify_types
      changeLoading: (actionEvent) => s.copyWith(loading: actionEvent.value),
      orElse: () {
        return s;
      },
    );
  }

  return s;
}
