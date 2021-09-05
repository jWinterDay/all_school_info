import 'package:domain/domain.dart';
import 'package:redux/redux.dart';

class AnnouncementEditBloc {
  AnnouncementEditBloc() {
    title = _announcementState.draftNewTitle ?? '';
    content = _announcementState.draftNewContent ?? '';

    _groups = <String>{..._announcementState.draftNewGroups};
  }

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

  void saveDraft() {
    _appStore.dispatch(AnnouncementAction.saveDraftContent(
      title: title,
      content: content,
    ));
  }

  void dispose() {}
}
