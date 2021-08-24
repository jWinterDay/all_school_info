import 'announcement_action.dart';
import 'announcement_state.dart';
import 'models/announcement_model.dart';

AnnouncementState announcementStateReducer(AnnouncementState s, dynamic a) {
  if (a is AnnouncementAction) {
    return a.maybeMap<AnnouncementState>(
      // ignore: always_specify_types
      changeLoading: (actionEvent) => s.copyWith(loading: actionEvent.value),
      cleanUp: (_) => s.copyWith(announcementList: <AnnouncementModel>[]),
      // ignore: always_specify_types
      addAnnouncement: (actionEvent) => _addAnnouncement(s, actionEvent.announcement),

      // TODO remove
      fetchAnnouncements: (_) => _fetchAnnouncements(s),
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
  // TODO
  if (state.announcementList == null) {
    state.copyWith(
      announcementList: <AnnouncementModel>[],
    );
  }

  state.announcementList!.add(announcementModel);

  return state;
  // .copyWith(
  //   announcementList: state.announcementList.add(announcementModel),
  // );
}

AnnouncementState _fetchAnnouncements(
  AnnouncementState state,
) {
  // TODO
  AnnouncementState nextState = state;

  nextState = state.copyWith(
    announcementList: <AnnouncementModel>[
      AnnouncementModel(
        content: 'fsdfsd',
        title: 'title',
      ),
    ],
  );

  return nextState;
}
