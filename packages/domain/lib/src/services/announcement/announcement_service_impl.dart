import 'package:domain/src/redux/announcement/models/announcement_model.dart';

import 'announcement_service.dart';

class AnnouncementServiceImpl implements AnnouncementService {
  @override
  Future<List<AnnouncementModel>> fetchAnnouncements() async {
    await Future<void>.delayed(const Duration(seconds: 3));

    return <AnnouncementModel>[
      const AnnouncementModel(
        content: 'fsdfsd_0',
        title: 'title_0',
      ),
      const AnnouncementModel(
        content: 'fsdfsd_1',
        title: 'title_1',
      ),
      const AnnouncementModel(
        content: 'fsdfsd_2',
        title: 'title_2',
      ),
    ];
  }
}
