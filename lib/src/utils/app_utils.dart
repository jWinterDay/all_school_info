import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domain/domain.dart';

// TODO remove
class AppUtils {
  static DocApplyType convertDocTypeToDtoType(DocumentChangeType documentChangeType) {
    switch (documentChangeType) {
      case DocumentChangeType.added:
        return DocApplyType.added;
      case DocumentChangeType.modified:
        return DocApplyType.modified;

      case DocumentChangeType.removed:
        return DocApplyType.removed;

      default:
        throw ArgumentError('Unknown document type: $documentChangeType');
    }
  }
}
