import 'dart:async';

import 'package:domain/domain.dart';
import 'package:domain/src/redux/announcement/models/announcement_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'announcement_service.dart';

class AnnouncementServiceMock implements AnnouncementService {
  static const String _collectionName = 'announcements';
  CollectionReference<Map<String, dynamic>> get _fbCollection => FirebaseFirestore.instance.collection(_collectionName);
  Query<Map<String, dynamic>> _query({
    required List<String> accessGroups,
    required int limit,
    int? dateUnixMsThreshold,
  }) {
    if (dateUnixMsThreshold == null) {
      return _fbCollection
          .orderBy(
            'date_unix_ms',
            descending: true,
          )
          .where(
            'user_groups',
            arrayContainsAny: accessGroups,
          )
          .limit(3); //limit);
    }

    return _fbCollection
        .orderBy(
          'date_unix_ms',
          descending: true,
        )
        .where('date_unix_ms', isLessThan: Timestamp.fromMillisecondsSinceEpoch(dateUnixMsThreshold))
        .where(
          'user_groups',
          arrayContainsAny: accessGroups,
        )
        .limit(3); //limit);
  }

  @override
  Future<List<AnnouncementModel>> fetchAnnouncements({
    required List<String> accessGroups,
    required int limit,
    int? dateUnixMsThreshold,
  }) async {
    if (accessGroups.isEmpty) {
      return <AnnouncementModel>[];
    }

    final QuerySnapshot<Map<String, dynamic>> res = await _query(
      accessGroups: accessGroups,
      limit: limit,
      dateUnixMsThreshold: dateUnixMsThreshold,
    ).get();

    return res.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> item) {
      return _mapModelFromData(
        data: item.data(),
        id: item.id,
        isUnread: false,
      );
    }).toList();
  }

  @override
  Stream<List<AnnouncementModel>> announcementsStream({
    required List<String> accessGroups,
    required int limit,
  }) {
    return _query(
      accessGroups: accessGroups,
      limit: limit,
    )
        .snapshots(includeMetadataChanges: true)
        .where((QuerySnapshot<Map<String, dynamic>> snapshot) => !snapshot.metadata.hasPendingWrites)
        .map((QuerySnapshot<Map<String, dynamic>> snapshot) {
      final List<QueryDocumentSnapshot<Map<String, dynamic>>> docList = snapshot.docs;
      final List<DocumentChange<Map<String, dynamic>>> changes = snapshot.docChanges;

      final List<String> changesIdList = changes.where((DocumentChange<Map<String, dynamic>> e) {
        return e.type != DocumentChangeType.added;
      }).map((DocumentChange<Map<String, dynamic>> e) {
        return e.doc.id;
      }).toList();

      return docList.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) {
        return _mapModelFromData(
          data: doc.data(),
          id: doc.id,
          isUnread: changesIdList.contains(doc.id),
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
  required bool isUnread,
  // required DocumentChangeType changeType,
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

  List<String> userGroups = <String>[];
  final dynamic userGroupsRaw = data?['user_groups'];
  if (userGroupsRaw is List) {
    userGroups = userGroupsRaw.map((dynamic e) => e.toString()).toList();
  }

  return AnnouncementModel(
    id,
    title: data?['title']?.toString(),
    content: data?['content']?.toString(),
    isTopEvent: isTopEvent,
    dateUnixMs: dateUnixMsRaw,
    userGroups: userGroups,
    isUnread: isUnread,
  );
}
