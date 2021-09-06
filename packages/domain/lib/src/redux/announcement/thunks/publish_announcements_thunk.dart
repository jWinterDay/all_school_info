import 'package:domain/domain.dart';
import 'package:domain/src/redux/announcement/announcement_action.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/services/announcement/announcement_service.dart';
import 'package:redux/redux.dart';
import 'package:utils/logger.dart';

void publishAnnouncementsThunk(
  Store<AppState> store, {
  required String title,
  required String content,
  required bool isTopEvent,
  required List<String> userGroups,
}) async {
  try {
    store.dispatch(const AnnouncementAction.changePublishLoading(value: true));

    final AnnouncementService userService = getIt.get<AnnouncementService>();

    await userService.publishAnnouncement(
      title: title,
      content: content,
      isTopEvent: isTopEvent,
      userGroups: userGroups,
    );
  } catch (exc, stackTrace) {
    logger.e('$exc', exc.toString(), stackTrace);
  } finally {
    store
      ..dispatch(const AnnouncementAction.changePublishLoading(value: false))
      ..dispatch(const AnnouncementAction.clearDraftContent());
  }
}
