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

  try {
    for (final AnnouncementApplyDto applyDto in applyDtoList) {
      // print('------${applyDto.id} > ${applyDto.docApplyType} data = ${applyDto.data}');

      switch (applyDto.docApplyType) {
        case DocApplyType.modified:
          break;

        case DocApplyType.added:
          _processAdded(store: store, applyDto: applyDto, firstFetch: firstFetch);
          break;

        case DocApplyType.removed:
          _processRemoved(store: store, applyDto: applyDto);
          break;

        default:
        // do nothing
      }
    }
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

void _processAdded({
  required AnnouncementApplyDto applyDto,
  required bool firstFetch,
  required Store<AppState> store,
}) {
  bool isTopEvent = false;
  final dynamic rawIsTopEvent = applyDto.data?['is_top_event'];
  if (rawIsTopEvent is bool) {
    isTopEvent = rawIsTopEvent;
  }

  final AnnouncementModel model = AnnouncementModel(
    applyDto.id,
    title: applyDto.data?['title']?.toString(),
    content: applyDto.data?['content']?.toString(),
    isTopEvent: isTopEvent,
    dateUnixMs: int.tryParse(applyDto.data?['date_unix_ms']?.toString() ?? ''),
  );

  if (firstFetch) {
    store.dispatch(AnnouncementAction.addAnnouncement(value: model));
  } else {
    store.dispatch(AnnouncementAction.addUnreadAnnouncement(value: model));
  }
}

void _processRemoved({
  required AnnouncementApplyDto applyDto,
  required Store<AppState> store,
}) {
  store.dispatch(
    AnnouncementAction.removeAnnouncementById(value: applyDto.id),
  );
}
