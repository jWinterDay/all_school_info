import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domain/domain.dart';
import 'package:redux/redux.dart';
import 'package:utils/logger.dart';

class AnnouncementEditBloc {
  AnnouncementEditBloc() {
    title = _announcementState.draftNewTitle ?? '';
    content = _announcementState.draftNewContent ?? '';

    _groups = <String>{..._announcementState.draftNewGroups};
  }

  Store<AppState> get _store => getIt.get<AppDomain>().appStore;
  AnnouncementState get _announcementState => _store.state.announcementState;

  bool get thereAreChanges {
    final AnnouncementState state = _announcementState;

    if (state.draftNewTitle == title && state.draftNewContent == content) {
      return false;
    }

    return title.isNotEmpty || content.isNotEmpty || _groups.isNotEmpty;
  }

  late String title;
  late String content;
  Set<String> _groups = <String>{};
  Set<String> get groups => _groups;

  /// draft groups check
  void draftToggleCheck(String groupName) {
    if (_groups.contains(groupName)) {
      _groups.remove(groupName);
    } else {
      _groups.add(groupName);
    }

    _store.dispatch(AnnouncementAction.saveDraftCheckedGroups(
      groups: _groups,
    ));
  }

  void saveDraftContent() {
    _store.dispatch(AnnouncementAction.saveDraftContent(
      title: title,
      content: content,
    ));
  }

  void saveDraft() {
    _store.dispatch(AnnouncementAction.saveDraftContent(
      title: title,
      content: content,
    ));
  }

  Future<void> publishAnnouncement() async {
    _store.dispatch((Store<AppState> store) {
      publishAnnouncementsThunk(
        store,
        title: title,
        content: content,
        isTopEvent: _store.state.announcementState.draftPublishToTop,
        userGroups: _groups.toList(),
      );
    });
  }

  void toggleDraftPublishToTop() {
    final bool current = _store.state.announcementState.draftPublishToTop;

    _store.dispatch(AnnouncementAction.changeDraftPublishToTop(value: !current));
  }

  void dispose() {}
}
