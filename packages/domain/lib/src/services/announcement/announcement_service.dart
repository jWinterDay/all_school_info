import 'package:domain/src/redux/announcement/models/announcement_model.dart';

abstract class AnnouncementService {
  Future<List<AnnouncementModel>> fetchAnnouncements();
}
