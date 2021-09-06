import 'package:domain/src/redux/announcement/models/announcement_model.dart';

abstract class AnnouncementService {
  Future<List<AnnouncementModel>> fetchAnnouncements({required List<String> accessGroups});

  Stream<List<AnnouncementModel>> announcementsStream({required List<String> accessGroups});

  Future<void> publishAnnouncement({
    required String title,
    required String content,
    required bool isTopEvent,
    required List<String> userGroups,
  });
}
