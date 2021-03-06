import 'package:domain/domain.dart';

class UiAnnouncementInfo {
  UiAnnouncementInfo({
    required this.announcementState,
    required this.topAnnouncementCount,
    required this.loggedIn,
  });

  final AnnouncementState announcementState;
  final int topAnnouncementCount;
  final bool loggedIn;

  /// available if you want to print non nullable error model
  String get errorMessage {
    if (announcementState.errorModel == null) {
      return '';
    }

    return 'Error: ${announcementState.errorModel!.code} >> ${announcementState.errorModel!.message}';
  }

  // top announcements taking into limit count
  List<AnnouncementModel> get topAnnouncementList {
    return announcementState.topList.take(topAnnouncementCount).toList();
  }

  List<AnnouncementModel> get unreadAnnouncementList {
    return announcementState.list.where((AnnouncementModel e) {
      return e.isUnread;
    }).toList();
  }

  List<AnnouncementModel> get readAnnouncementList {
    return announcementState.list.where((AnnouncementModel e) {
      return !e.isUnread;
    }).toList();
  }
}
