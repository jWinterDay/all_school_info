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

  final CollectionReference<Map<String, dynamic>> _announcements =
      FirebaseFirestore.instance.collection('announcements');

  Store<AppState> get _appStore => getIt.get<AppDomain>().appStore;
  AnnouncementState get _announcementState => _appStore.state.announcementState;

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

    _appStore.dispatch(AnnouncementAction.saveDraftCheckedGroups(
      groups: _groups,
    ));
  }

  void saveDraftContent() {
    // if (_groups.contains(groupName)) {
    //   _groups.remove(groupName);
    // } else {
    //   _groups.add(groupName);
    // }

    _appStore.dispatch(AnnouncementAction.saveDraftContent(
      title: title,
      content: content,
    ));
  }

  void saveDraft() {
    _appStore.dispatch(AnnouncementAction.saveDraftContent(
      title: title,
      content: content,
    ));
  }

  Future<void> publishAnnouncement() async {
    try {
      _appStore.dispatch(const AnnouncementAction.changePublishLoading(value: true));

      final Map<String, dynamic> data = <String, dynamic>{
        // 'id': '${DateTime.now().millisecondsSinceEpoch}', // TODO
        'title': title,
        'content': content,
        'user_groups': FieldValue.arrayUnion(_groups.toList()),
        'is_top_event': _appStore.state.announcementState.draftPublishToTop,
        'date_unix_ms': FieldValue.serverTimestamp(),
      };

      // final DocumentReference<Map<String, dynamic>> t =
      await _announcements.add(data);

      // print('added = ${t.id}');
    } catch (exc, stackTrace) {
      logger.e('$exc', exc.toString(), stackTrace);
    } finally {
      _appStore
        ..dispatch(const AnnouncementAction.changePublishLoading(value: false))
        ..dispatch(const AnnouncementAction.clearDraftContent());
    }
  }

  void toggleDraftPublishToTop() {
    final bool current = _appStore.state.announcementState.draftPublishToTop;

    _appStore.dispatch(AnnouncementAction.changeDraftPublishToTop(value: !current));
  }

  void dispose() {}
}
