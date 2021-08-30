import 'announcement_action.dart';
import 'announcement_state.dart';
import 'models/announcement_model.dart';

AnnouncementState announcementReducer(AnnouncementState s, dynamic a) {
  if (a is AnnouncementAction) {
    return a.maybeMap<AnnouncementState>(
      // ignore: always_specify_types
      changeLoading: (actionEvent) => s.copyWith(loading: actionEvent.value),
      cleanUp: (_) => s.copyWith(announcementList: <AnnouncementModel>[]),
      // ignore: always_specify_types
      addAnnouncement: (actionEvent) => _addAnnouncement(s, actionEvent.announcement),
      // ignore: always_specify_types
      addAnnouncementList: (actionEvent) => _addAnnouncementList(s, actionEvent.list),
      // ignore: always_specify_types
      setErrorModel: (actionEvent) => s.copyWith(errorModel: actionEvent.value),
      clearErrorModel: (_) => s.copyWith(errorModel: null),
      orElse: () {
        return s;
      },
    );
  }

  return s;
}

AnnouncementState _addAnnouncement(
  AnnouncementState state,
  AnnouncementModel announcementModel,
) {
  final List<AnnouncementModel> nextList = <AnnouncementModel>[
    ...state.announcementList ?? <AnnouncementModel>[],
    announcementModel,
  ];

  return state.copyWith(
    announcementList: nextList,
  );
}

AnnouncementState _addAnnouncementList(
  AnnouncementState state,
  Iterable<AnnouncementModel> list,
) {
  return state.copyWith(
    announcementList: list.toList(),
  );
}
