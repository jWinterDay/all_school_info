import 'package:domain/domain.dart';
import 'package:collection/collection.dart';

class AnnouncementDetailsBloc {
  AnnouncementModel? findAnnouncementById(String announcementId) {
    final AnnouncementState state = getIt.get<AppDomain>().appStore.state.announcementState;

    final List<AnnouncementModel> list = <AnnouncementModel>[
      ...state.list,
      ...state.topList,
    ];

    return list.singleWhereOrNull((AnnouncementModel item) {
      return item.id == announcementId;
    });
  }

  void dispose() {}
}
