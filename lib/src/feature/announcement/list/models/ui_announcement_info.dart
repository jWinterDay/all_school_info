import 'package:domain/domain.dart';

class UiAnnouncementInfo {
  UiAnnouncementInfo({
    required this.announcementState,
    required this.topAnnouncementCount,
  });

  final AnnouncementState announcementState;
  final int topAnnouncementCount;

  /// available if you want to print non nullable error model
  String get errorMessage {
    if (announcementState.errorModel == null) {
      return '';
    }

    return 'Error: ${announcementState.errorModel!.code} >> ${announcementState.errorModel!.message}';
  }

  //
  List<AnnouncementModel> get topAnnouncementList {
    return announcementState.topAnnouncements.take(topAnnouncementCount).toList();
  }
}