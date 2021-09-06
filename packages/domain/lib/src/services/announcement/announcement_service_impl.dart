import 'package:domain/src/redux/announcement/models/announcement_model.dart';

import 'announcement_service.dart';

class AnnouncementServiceImpl implements AnnouncementService {
  @override
  Future<List<AnnouncementModel>> fetchAnnouncements({required List<String> accessGroups}) async {
    throw UnimplementedError();
  }

  @override
  Stream<List<AnnouncementModel>> announcementsStream({required List<String> accessGroups}) {
    throw UnimplementedError();
  }

  @override
  Future<void> publishAnnouncement({
    required String title,
    required String content,
    required bool isTopEvent,
    required List<String> userGroups,
  }) {
    throw UnimplementedError();
  }
}


    // _firstFetch = true;

    // if (_store.state.userState.accessGroups.isNotEmpty) {
    //   _store.dispatch(const AnnouncementAction.changeLoading(value: true));

    // _announcements
    //     ?.where(
    //       'user_groups',
    //       arrayContainsAny: _store.state.userState.accessGroups,
    //     )
    //     .get()
    //     .then((QuerySnapshot<Map<String, dynamic>> data) {
    //   _store.dispatch(const AnnouncementAction.cleanUp());
    //   _applyQuerySnapshot(data);
    // });
    // }

    // final Computer computer = getIt.get<Computer>();
    // await computer.compute<void, void>(_someExpensiveMethod);

    // int listCount = 0;
    // switch (_cnt++ % 3) {
    //   case 0:
    //     listCount = 15;
    //     break;
    //   case 1:
    //     listCount = 0;
    //     break;
    //   case 2:
    //     throw const TlsException('test exception');
    //   default:
    //     listCount = 15;
    // }

    // return List<AnnouncementModel>.generate(listCount, (int index) {
    //   return AnnouncementModel(
    //     '$index',
    //     content: 'some body',
    //     title: 'looooooooooo oooooooooooo ooooooOOOoo OOOOoooOOoooong_title_$index',
    //     isTopEvent: index % 2 == 0,
    //   );
    // });