import 'package:domain/domain.dart';
import 'package:redux/redux.dart';

class AnnouncementEditBloc {
  AnnouncementEditBloc() {
    final Store<AppState> appStore = getIt.get<AppDomain>().appStore;
    final AnnouncementState state = appStore.state.announcementState;

    _title = state.draftNewTitle;
    _content = state.draftNewContent;

    _groups = <String>{...state.draftNewGroups};
  }

  String? _title;
  String? get title => _title;
  set title(String? val) {
    _title = val;

    _saveDraft();
  }

  String? _content;
  String? get content => _content;
  set content(String? val) {
    _content = val;

    _saveDraft();
  }

  Set<String> _groups = <String>{};

  /// draft groups check
  void draftToggleCheck(String groupName) {
    if (_groups.contains(groupName)) {
      _groups.remove(groupName);
    } else {
      _groups.add(groupName);
    }

    _saveDraft();
  }

  void _saveDraft() {
    final Store<AppState> appStore = getIt.get<AppDomain>().appStore;

    appStore.dispatch(AnnouncementAction.saveDraft(
      title: _title,
      content: _content,
      groups: _groups,
    ));
  }

  void dispose() {}
}
