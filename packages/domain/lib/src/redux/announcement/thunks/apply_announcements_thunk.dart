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
    if (applyDtoList.isEmpty) {
      store.dispatch(const AnnouncementAction.cleanUp());

      return;
    }

    for (final AnnouncementApplyDto applyDto in applyDtoList) {
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
    print('exc: $exc');
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
  // print('domain data = ${applyDto.data}');
  bool isTopEvent = false;
  final dynamic rawIsTopEvent = applyDto.data?['is_top_event'];
  if (rawIsTopEvent is bool) {
    isTopEvent = rawIsTopEvent;
  }

  final dynamic dateUnixMsRaw = applyDto.data?['date_unix_ms'];
  // print('domain dateUnixMsRaw = $dateUnixMsRaw');
  int? unixMs;
  try {
    if (dateUnixMsRaw != null) {
      // ignore: avoid_as
      unixMs = dateUnixMsRaw.millisecondsSinceEpoch as int?;
    }
  } catch (exc) {
    rethrow;
  }

  // print('domain unixMs = $unixMs');

  final AnnouncementModel model = AnnouncementModel(
    applyDto.id,
    title: applyDto.data?['title']?.toString(),
    content: applyDto.data?['content']?.toString(),
    isTopEvent: isTopEvent,
    dateUnixMs: unixMs,
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
