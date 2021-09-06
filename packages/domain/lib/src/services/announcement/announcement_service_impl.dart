import 'package:domain/src/redux/announcement/models/announcement_model.dart';

import 'announcement_service.dart';

class AnnouncementServiceImpl implements AnnouncementService {
  @override
  Future<List<AnnouncementModel>> fetchAnnouncements() async {
    throw UnimplementedError();
  }

  @override
  Stream<List<AnnouncementModel>> announcementsStream({required List<String> accessGroups}) {
    throw UnimplementedError();
  }
}
