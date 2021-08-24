import 'models/announcement.dart';

abstract class AnnouncementAction {
  const AnnouncementAction();
}

class AddAnnouncementAction extends AnnouncementAction {
  const AddAnnouncementAction({
    required this.announcement,
  });

  final Announcement announcement;
}
