import 'package:domain/domain.dart';
import 'package:collection/collection.dart';
import 'package:redux/redux.dart';

class AnnouncementDetailsBloc {
  Store<AppState> get _store => getIt.get<AppDomain>().appStore;

  AnnouncementModel? findAnnouncementById(String announcementId) {
    final AnnouncementState state = _store.state.announcementState;

    final List<AnnouncementModel> list = <AnnouncementModel>[
      ...state.list,
      ...state.topList,
    ];

    return list.singleWhereOrNull((AnnouncementModel item) {
      return item.id == announcementId;
    });
  }

  void markAsRead(String id) {
    _store.dispatch(
      AnnouncementAction.markAsRead(
        ids: <String>[id],
      ),
    );
  }

  void dispose() {}
}
