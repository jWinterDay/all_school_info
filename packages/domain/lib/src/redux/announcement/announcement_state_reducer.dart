import 'announcement_action.dart';
import 'announcement_state.dart';
import 'models/announcement_model.dart';

AnnouncementState announcementReducer(AnnouncementState s, dynamic a) {
  if (a is AnnouncementAction) {
    return a.maybeMap<AnnouncementState>(
      /// `common`
      // ignore: always_specify_types
      changeLoading: (a) => s.copyWith(loading: a.value),
      // ignore: always_specify_types
      changeFirstLoading: (a) => s.copyWith(firstLoading: a.value),
      cleanUp: (_) => s.copyWith(
        list: <AnnouncementModel>[],
        topList: <AnnouncementModel>[],
        unreadList: <AnnouncementModel>[],
      ),
      // ignore: always_specify_types
      setErrorModel: (a) => s.copyWith(errorModel: a.value),
      clearErrorModel: (_) => s.copyWith(errorModel: null),

      /// `announcement list`
      // ignore: always_specify_types
      addAnnouncement: (a) => _addAnnouncement(s, a.value),
      // ignore: always_specify_types
      addAnnouncementList: (a) => _addAnnouncementList(s, a.value),
      // ignore: always_specify_types
      removeAnnouncementById: (a) => _removeAnnouncementById(s, a.value),
      // ignore: always_specify_types
      modifyAnnouncementById: (a) => _modifyAnnouncementById(s, id: a.id, data: a.data),

      /// `unread list`
      // ignore: always_specify_types
      addUnreadAnnouncement: (a) => _addUnreadAnnouncement(s, a.value),
      // ignore: always_specify_types
      addUnreadAnnouncementList: (a) => _addUnreadAnnouncementList(s, a.value),
      // ignore: always_specify_types
      clearUnreadAnnouncements: (_) => _clearUnreadAnnouncements(s),

      /// `draft`
      clearDraftContent: (_) => s.copyWith(draftNewTitle: null, draftNewContent: null), //, draftNewGroups: <String>{}),
      // ignore: always_specify_types
      saveDraftContent: (a) => s.copyWith(draftNewTitle: a.title, draftNewContent: a.content),
      // ignore: always_specify_types
      saveDraftCheckedGroups: (a) => s.copyWith(draftNewGroups: a.groups),
      // ignore: always_specify_types
      changeDraftPublishToTop: (a) => s.copyWith(draftPublishToTop: a.value),

      /// `add, modify, remove announcement`
      // ignore: always_specify_types
      changePublishLoading: (a) => s.copyWith(publishLoading: a.value),

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
      list: nextList..sort(),
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
      ]..sort(),
    );
  }

  return state.copyWith(
    list: <AnnouncementModel>[
      ...state.list,
      announcementModel,
    ]..sort(),
  );
}

AnnouncementState _addAnnouncementList(
  AnnouncementState state,
  Iterable<AnnouncementModel> list,
) {
  return state.copyWith(
    list: <AnnouncementModel>[
      ...list.where((AnnouncementModel e) => !e.isTopEvent).toList()..sort(),
      ...state.list,
    ],
    topList: <AnnouncementModel>[
      ...list.where((AnnouncementModel e) => e.isTopEvent).toList()..sort(),
      ...state.topList,
    ],
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
      ]..sort(),
    );
  }

  return state.copyWith(
    unreadList: <AnnouncementModel>[
      announcementModel,
      ...state.unreadList,
    ]..sort(),
  );
}

AnnouncementState _addUnreadAnnouncementList(
  AnnouncementState state,
  List<AnnouncementModel> list,
) {
  // TODO
  // insert top events directly to topList
  // if (announcementModel.isTopEvent) {
  //   return state.copyWith(
  //     topList: <AnnouncementModel>[
  //       announcementModel,
  //       ...state.topList,
  //     ]..sort(),
  //   );
  // }

  return state.copyWith(
    unreadList: <AnnouncementModel>[
      ...list,
      ...state.unreadList,
    ]..sort(),
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
    ]..sort(),
    topList: <AnnouncementModel>[
      ...state.unreadList.where((AnnouncementModel e) => e.isTopEvent).toList(),
      ...state.topList,
    ]..sort(),
  );
}
