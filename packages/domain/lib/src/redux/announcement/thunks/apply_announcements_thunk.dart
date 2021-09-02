import 'package:domain/src/redux/announcement/announcement_action.dart';
import 'package:domain/src/redux/announcement/dto/announcement_apply_dto.dart';
import 'package:domain/src/redux/announcement/models/announcement_model.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/redux/common/models/doc_apply_type.dart';
import 'package:redux/redux.dart';

void applyAnnouncementsThunk(
  Store<AppState> store, {
  required Iterable<AnnouncementApplyDto> applyDtoList,
  required bool firstFetch,
}) async {
  store
    ..dispatch(const AnnouncementAction.changeLoading(value: true))
    ..dispatch(const AnnouncementAction.clearErrorModel());

  // print('domain len ${data.length} received $data');

  // final AnnouncementService announcementService = getIt.get<AnnouncementService>();

  try {
    for (final AnnouncementApplyDto applyDto in applyDtoList) {
      print('------${applyDto.id} > ${applyDto.docApplyType} data = ${applyDto.data}');

      switch (applyDto.docApplyType) {
        case DocApplyType.modified:
          break;

        case DocApplyType.added:
          bool isTopEvent = false;
          final dynamic rawIsTopEvent = applyDto.data?['is_top_event'];
          if (rawIsTopEvent is bool) {
            isTopEvent = rawIsTopEvent;
          }

          if (firstFetch) {
            store.dispatch(
              AnnouncementAction.addAnnouncement(
                value: AnnouncementModel(
                  applyDto.id,
                  title: applyDto.data?['title']?.toString(),
                  content: applyDto.data?['content']?.toString(),
                  isTopEvent: isTopEvent,
                ),
              ),
            );
          } else {
            store.dispatch(
              AnnouncementAction.addUnreadAnnouncement(
                value: AnnouncementModel(
                  applyDto.id,
                  title: applyDto.data?['title']?.toString(),
                  content: applyDto.data?['content']?.toString(),
                  isTopEvent: isTopEvent,
                ),
              ),
            );
          }
          break;

        case DocApplyType.removed:
          store.dispatch(
            AnnouncementAction.removeAnnouncementById(value: applyDto.id),
          );
          break;

        default:
        // do nothing
      }
    }
    // final List<AnnouncementModel> list = await announcementService.fetchAnnouncements();
    // store.dispatch(AnnouncementAction.addAnnouncementList(value: list));
  } catch (exc) {
    // store.dispatch(
    //   AnnouncementAction.setErrorModel(
    //     value: ErrorModel(44, exc.toString()),
    //   ),
    // );
  } finally {
    store.dispatch(const AnnouncementAction.changeLoading(value: false));

    if (store.state.announcementState.firstLoading) {
      store.dispatch(const AnnouncementAction.changeFirstLoading(value: false));
    }
  }
}
