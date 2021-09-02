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
      cleanUp: (_) => s.copyWith(
        list: <AnnouncementModel>[],
        topList: <AnnouncementModel>[],
        unreadList: <AnnouncementModel>[],
      ),
      // ignore: always_specify_types
      setErrorModel: (actionEvent) => s.copyWith(errorModel: actionEvent.value),
      clearErrorModel: (_) => s.copyWith(errorModel: null),

      //
      // ignore: always_specify_types
      addAnnouncement: (actionEvent) => _addAnnouncement(s, actionEvent.value),
      // ignore: always_specify_types
      addAnnouncementList: (actionEvent) => _addAnnouncementList(s, actionEvent.value),
      // ignore: always_specify_types
      removeAnnouncementById: (actionEvent) => _removeAnnouncementById(s, actionEvent.value),
      // ignore: always_specify_types
      modifyAnnouncementById: (actionEvent) => _modifyAnnouncementById(s, id: actionEvent.id, data: actionEvent.data),

      //
      // ignore: always_specify_types
      addUnreadAnnouncement: (actionEvent) => _addUnreadAnnouncement(s, actionEvent.value),
      // ignore: always_specify_types
      clearUnreadAnnouncements: (_) => _clearUnreadAnnouncements(s),

      orElse: () {
        return s;
      },
    );
  }

  return s;
}

AnnouncementState _modifyAnnouncementById(
  AnnouncementState state, {
  required String id,
  Map<String, dynamic>? data,
}) {
  // TODO remake
  // if (state.list.any((AnnouncementModel e) => e.id == id)) {
  //   final List<AnnouncementModel> nextList = <AnnouncementModel>[...state.list];
  //   nextList.removeWhere((AnnouncementModel e) => e.id == id);
  //   return state.copyWith(
  //     list: nextList,
  //   );
  // }

  return state;
}

AnnouncementState _removeAnnouncementById(
  AnnouncementState state,
  String id,
) {
  // TODO remake
  if (state.list.any((AnnouncementModel e) => e.id == id)) {
    final List<AnnouncementModel> nextList = <AnnouncementModel>[...state.list];
    nextList.removeWhere((AnnouncementModel e) => e.id == id);
    return state.copyWith(
      list: nextList,
    );
  }

  if (state.topList.any((AnnouncementModel e) => e.id == id)) {
    final List<AnnouncementModel> nextList = <AnnouncementModel>[...state.topList];
    nextList.removeWhere((AnnouncementModel e) => e.id == id);
    return state.copyWith(
      topList: nextList,
    );
  }

  if (state.unreadList.any((AnnouncementModel e) => e.id == id)) {
    final List<AnnouncementModel> nextList = <AnnouncementModel>[...state.unreadList];
    nextList.removeWhere((AnnouncementModel e) => e.id == id);
    return state.copyWith(
      unreadList: nextList,
    );
  }

  return state;
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
  // insert top events directly to topList
  if (announcementModel.isTopEvent) {
    return state.copyWith(
      topList: <AnnouncementModel>[
        announcementModel,
        ...state.topList,
      ],
    );
  }

  return state.copyWith(
    unreadList: <AnnouncementModel>[
      announcementModel,
      ...state.unreadList,
    ],
  );
}

AnnouncementState _clearUnreadAnnouncements(
  AnnouncementState state,
) {
  return state.copyWith(
    unreadList: <AnnouncementModel>[],
    list: <AnnouncementModel>[
      ...state.unreadList.where((AnnouncementModel e) => !e.isTopEvent).toList(),
      ...state.list,
    ],
    topList: <AnnouncementModel>[
      ...state.unreadList.where((AnnouncementModel e) => e.isTopEvent).toList(),
      ...state.topList,
    ],
  );
}
