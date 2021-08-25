import 'package:domain/src/redux/announcement/models/announcement_model.dart';

import 'announcement_service.dart';

class AnnouncementServiceImpl implements AnnouncementService {
  @override
  Future<List<AnnouncementModel>> fetchAnnouncements() async {
    await Future<void>.delayed(const Duration(seconds: 3));

    return List<AnnouncementModel>.generate(15, (int index) {
      return AnnouncementModel(
        content: 'fsdfsd_$index',
        title: 'title_$index',
      );
    });
  }
}
