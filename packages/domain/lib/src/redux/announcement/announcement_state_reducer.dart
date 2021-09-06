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
      // ignore: always_specify_types
      markAsRead: (a) => _markAsRead(s, ids: a.ids),
      // ignore: always_specify_types
      clearUnread: (a) => _clearUnread(s),

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

AnnouncementState _markAsRead(
  AnnouncementState state, {
  required List<String> ids,
}) {
  final List<AnnouncementModel> nextList = state.list.map((AnnouncementModel model) {
    if (ids.contains(model.id)) {
      return model.copyWith(isUnread: false);
    }

    return model;
  }).toList();

  final List<AnnouncementModel> nextTopList = state.topList.map((AnnouncementModel model) {
    if (ids.contains(model.id)) {
      return model.copyWith(isUnread: false);
    }

    return model;
  }).toList();

  return state.copyWith(
    list: nextList,
    topList: nextTopList,
  );
}

AnnouncementState _clearUnread(AnnouncementState state) {
  final List<AnnouncementModel> nextList = state.list.map((AnnouncementModel model) {
    return model.copyWith(isUnread: false);
  }).toList();

  print('nextList = $nextList');

  return state.copyWith(
    list: nextList,
  );
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
  throw UnimplementedError();
  // top
  // if (announcementModel.isTopEvent) {
  //   return state.copyWith(
  //     topList: <AnnouncementModel>[
  //       ...state.list,
  //       announcementModel,
  //     ],
  //   );
  // }

  // return state.copyWith(
  //   list: <AnnouncementModel>[
  //     ...state.list,
  //     announcementModel,
  //   ],
  // );
}

AnnouncementState _addAnnouncementList(
  AnnouncementState state,
  Iterable<AnnouncementModel> list,
) {
  return state.copyWith(
    list: list.where((AnnouncementModel e) => !e.isTopEvent).where((AnnouncementModel e) => !e.isUnread).toList(),
    topList: list.where((AnnouncementModel e) => e.isTopEvent).toList(),
    unreadList: list.where((AnnouncementModel e) => !e.isTopEvent).where((AnnouncementModel e) => e.isUnread).toList(),
  );
}

// AnnouncementState _addUnreadAnnouncement(
//   AnnouncementState state,
//   AnnouncementModel announcementModel,
// ) {
//   // insert top events directly to topList
//   if (announcementModel.isTopEvent) {
//     return state.copyWith(
//       topList: <AnnouncementModel>[
//         announcementModel,
//         ...state.topList,
//       ],
//     );
//   }

//   return state.copyWith(
//     unreadList: <AnnouncementModel>[
//       announcementModel,
//       ...state.unreadList,
//     ],
//   );
// }

// AnnouncementState _addUnreadAnnouncementList(
//   AnnouncementState state,
//   List<AnnouncementModel> list,
// ) {
//   // TODO
//   // insert top events directly to topList
//   // if (announcementModel.isTopEvent) {
//   //   return state.copyWith(
//   //     topList: <AnnouncementModel>[
//   //       announcementModel,
//   //       ...state.topList,
//   //     ],
//   //   );
//   // }

//   return state.copyWith(
//     unreadList: <AnnouncementModel>[
//       ...list,
//       ...state.unreadList,
//     ],
//   );
// }

// AnnouncementState _clearUnreadAnnouncements(
//   AnnouncementState state,
// ) {
//   return state.copyWith(
//     unreadList: <AnnouncementModel>[],
//     list: <AnnouncementModel>[
//       ...state.unreadList.where((AnnouncementModel e) => !e.isTopEvent).toList(),
//       ...state.list,
//     ],
//     topList: <AnnouncementModel>[
//       ...state.unreadList.where((AnnouncementModel e) => e.isTopEvent).toList(),
//       ...state.topList,
//     ],
//   );
// }
