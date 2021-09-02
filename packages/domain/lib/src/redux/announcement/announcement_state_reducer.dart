import 'announcement_action.dart';
import 'announcement_state.dart';
import 'models/announcement_model.dart';

AnnouncementState announcementReducer(AnnouncementState s, dynamic a) {
  if (a is AnnouncementAction) {
    return a.maybeMap<AnnouncementState>(
      // ignore: always_specify_types
      changeLoading: (actionEvent) => s.copyWith(loading: actionEvent.value),
      // ignore: always_specify_types
      changeFirstLoading: (actionEvent) => s.copyWith(firstLoading: actionEvent.value),
      cleanUp: (_) => s.copyWith(list: <AnnouncementModel>[]),
      // ignore: always_specify_types
      setErrorModel: (actionEvent) => s.copyWith(errorModel: actionEvent.value),
      clearErrorModel: (_) => s.copyWith(errorModel: null),

      //
      // ignore: always_specify_types
      addAnnouncement: (actionEvent) => _addAnnouncement(s, actionEvent.value),
      // ignore: always_specify_types
      addAnnouncementList: (actionEvent) => _addAnnouncementList(s, actionEvent.value),

      //
      // ignore: always_specify_types
      addUnreadAnnouncement: (actionEvent) => _addUnreadAnnouncement(s, actionEvent.value),
      // ignore: always_specify_types
      removeUnreadAnnouncement: (actionEvent) => _removeUnreadAnnouncement(s, actionEvent.value),
      clearUnreadAnnouncement: (_) => s.copyWith(unreadList: <AnnouncementModel>[]),

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
  // top
  if (announcementModel.isTopEvent) {
    return state.copyWith(
      topList: <AnnouncementModel>[
        ...state.list,
        announcementModel,
      ],
    );
  }

  return state.copyWith(
    list: <AnnouncementModel>[
      ...state.list,
      announcementModel,
    ],
  );
}

AnnouncementState _addAnnouncementList(
  AnnouncementState state,
  Iterable<AnnouncementModel> list,
) {
  return state.copyWith(
    list: list.where((AnnouncementModel e) => !e.isTopEvent).toList(),
    topList: list.where((AnnouncementModel e) => e.isTopEvent).toList(),
  );
}

AnnouncementState _addUnreadAnnouncement(
  AnnouncementState state,
  AnnouncementModel announcementModel,
) {
  final nextList = <AnnouncementModel>[
    ...state.unreadList,
    announcementModel,
  ];

  print('reducer next = $nextList');

  return state.copyWith(
    unreadList: <AnnouncementModel>[
      ...state.unreadList,
      announcementModel,
    ],
  );
}

AnnouncementState _removeUnreadAnnouncement(
  AnnouncementState state,
  AnnouncementModel announcementModel,
) {
  final List<AnnouncementModel> nextList = <AnnouncementModel>[
    ...state.list,
  ];

  nextList.remove(announcementModel);

  return state.copyWith(
    unreadList: nextList,
  );
}
