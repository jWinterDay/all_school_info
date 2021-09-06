import 'dart:async';
import 'dart:io';

import 'package:domain/domain.dart';
import 'package:domain/src/redux/announcement/models/announcement_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'announcement_service.dart';

int _cnt = 0;

class AnnouncementServiceMock implements AnnouncementService {
  static const String _collectionName = 'announcements';
  CollectionReference<Map<String, dynamic>> get _fbCollection => FirebaseFirestore.instance.collection(_collectionName);

  @override
  Future<List<AnnouncementModel>> fetchAnnouncements() async {
    // final Computer computer = getIt.get<Computer>();
    // await computer.compute<void, void>(_someExpensiveMethod);

    int listCount = 0;
    switch (_cnt++ % 3) {
      case 0:
        listCount = 15;
        break;
      case 1:
        listCount = 0;
        break;
      case 2:
        throw const TlsException('test exception');
      default:
        listCount = 15;
    }

    return List<AnnouncementModel>.generate(listCount, (int index) {
      return AnnouncementModel(
        '$index',
        content: 'some body',
        title: 'looooooooooo oooooooooooo ooooooOOOoo OOOOoooOOoooong_title_$index',
        isTopEvent: index % 2 == 0,
      );
    });
  }

  @override
  Stream<List<AnnouncementModel>> announcementsStream({required List<String> accessGroups}) {
    return _fbCollection
        .where(
          'user_groups',
          arrayContainsAny: accessGroups,
        )
        .snapshots(includeMetadataChanges: true)
        .map((QuerySnapshot<Map<String, dynamic>> snapshot) => snapshot.docChanges)
        .map((List<DocumentChange<Map<String, dynamic>>> changes) {
      return changes.map((DocumentChange<Map<String, dynamic>> change) {
        final Map<String, dynamic>? data = change.doc.data();

        bool isTopEvent = false;
        final dynamic rawIsTopEvent = data?['is_top_event'];
        if (rawIsTopEvent is bool) {
          isTopEvent = rawIsTopEvent;
        }

        int? dateUnixMsRaw;
        final dynamic rawDateUnixMs = data?['date_unix_ms'];
        if (rawDateUnixMs != null) {
          if (rawDateUnixMs is Timestamp) {
            dateUnixMsRaw = rawDateUnixMs.millisecondsSinceEpoch;
          }
        }

        return AnnouncementModel(
          change.doc.id,
          title: data?['title']?.toString(),
          content: data?['content']?.toString(),
          isTopEvent: isTopEvent,
          dateUnixMs: dateUnixMsRaw,
          documentChangeType: change.type,
        );
      }).toList();
    });
  }

  @override
  Future<void> publishAnnouncement({
    required String title,
    required String content,
    required bool isTopEvent,
    required List<String> userGroups,
  }) async {
    final Map<String, dynamic> data = <String, dynamic>{
      'title': title,
      'content': content,
      'user_groups': FieldValue.arrayUnion(userGroups),
      'is_top_event': isTopEvent,
      'date_unix_ms': FieldValue.serverTimestamp(),
    };

    // final DocumentReference<Map<String, dynamic>> result =
    await _fbCollection.add(data);
    // result.id
  }
}
