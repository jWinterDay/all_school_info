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
  Future<List<AnnouncementModel>> fetchAnnouncements({required List<String> accessGroups}) async {
    if (accessGroups.isEmpty) {
      return <AnnouncementModel>[];
    }

    final QuerySnapshot<Map<String, dynamic>> res = await _fbCollection
        .where(
          'user_groups',
          arrayContainsAny: accessGroups,
        )
        .get();

    return res.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> item) {
      return _mapModelFromData(
        data: item.data(),
        id: item.id,
        changeType: DocumentChangeType.added,
      );
    }).toList();
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

        return _mapModelFromData(
          data: data,
          id: change.doc.id,
          changeType: change.type,
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

AnnouncementModel _mapModelFromData({
  required Map<String, dynamic>? data,
  required String id,
  required DocumentChangeType changeType,
}) {
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
    id,
    title: data?['title']?.toString(),
    content: data?['content']?.toString(),
    isTopEvent: isTopEvent,
    dateUnixMs: dateUnixMsRaw,
    documentChangeType: changeType,
  );
}
