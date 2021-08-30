import 'package:domain/domain.dart';
import 'package:collection/collection.dart';

class AnnouncementDetailBloc {
  AnnouncementModel? findAnnouncementById(String announcementId) {
    final List<AnnouncementModel>? list = getIt.get<AppDomain>().appStore.state.announcementState.announcementList;

    if (list == null) {
      return null;
    }

    return list.singleWhereOrNull((AnnouncementModel item) {
      return item.id == announcementId;
    });
  }

  void dispose() {}
}
