import 'package:domain/src/redux/announcement/models/announcement_model.dart';

import 'announcement_service.dart';

class AnnouncementServiceImpl implements AnnouncementService {
  int _count = 0;

  @override
  Future<List<AnnouncementModel>> fetchAnnouncements() async {
    _count++;

    await Future<void>.delayed(const Duration(seconds: 3));

    return <AnnouncementModel>[
      AnnouncementModel(
        content: 'fsdfsd_$_count',
        title: 'title_$_count',
      ),
    ];
  }
}
