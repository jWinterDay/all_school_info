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

  @override
  Future<void> publishAnnouncement({
    required String title,
    required String content,
    required bool isTopEvent,
    required List<String> userGroups,
  }) {
    throw UnimplementedError();
  }
}
