import 'package:domain/src/redux/common/models/collection_add_type.dart';

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
        // unreadList: <AnnouncementModel>[],
      ),
      // ignore: always_specify_types
      setErrorModel: (a) => s.copyWith(errorModel: a.value),
      clearErrorModel: (_) => s.copyWith(errorModel: null),

      /// `announcement list`
      // ignore: always_specify_types
      changeLimit: (a) => s.copyWith(limit: a.value),
      // ignore: always_specify_types
      changeDateUnixMsThreshold: (a) => s.copyWith(dateUnixMsThreshold: a.value),
      // ignore: always_specify_types
      addAnnouncement: (a) => _addAnnouncement(s, a.value),
      // ignore: always_specify_types
      addAnnouncementList: (a) => _addAnnouncementList(s, list: a.value, collectionAddType: a.collectionAddType),
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
  return state;
}

AnnouncementState _addAnnouncement(
  AnnouncementState state,
  AnnouncementModel announcementModel,
) {
  return state.copyWith(
    list: <AnnouncementModel>[
      if (!announcementModel.isTopEvent) announcementModel,
      ...state.list,
    ],
    topList: <AnnouncementModel>[
      if (announcementModel.isTopEvent) announcementModel,
      ...state.topList,
    ],
  );
}

AnnouncementState _addAnnouncementList(
  AnnouncementState state, {
  required Iterable<AnnouncementModel> list,
  required CollectionAddType collectionAddType,
}) {
  final List<AnnouncementModel> notTopList = list.where((AnnouncementModel e) => !e.isTopEvent).toList();

  List<AnnouncementModel> resultList;
  switch (collectionAddType) {
    // add to top of list
    case CollectionAddType.top:
      resultList = <AnnouncementModel>[
        ...notTopList,
        ...state.list,
      ];
      break;
    // add to down of list
    case CollectionAddType.down:
      resultList = <AnnouncementModel>[
        ...state.list,
        ...notTopList,
      ];
      break;
    // replace current list
    default:
      resultList = notTopList;
  }

  return state.copyWith(
    list: resultList,
    topList: <AnnouncementModel>[
      if (collectionAddType == CollectionAddType.refresh)
        ...list.where((AnnouncementModel e) => e.isTopEvent).toList()
      else ...<AnnouncementModel>[
        ...list.where((AnnouncementModel e) => e.isTopEvent).toList(),
        ...state.topList,
      ],
    ],
  );
}
