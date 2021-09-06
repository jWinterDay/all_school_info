import 'package:domain/src/redux/announcement/models/announcement_model.dart';

abstract class AnnouncementService {
  Future<List<AnnouncementModel>> fetchAnnouncements();

  Stream<List<AnnouncementModel>> announcementsStream({required List<String> accessGroups});
}
