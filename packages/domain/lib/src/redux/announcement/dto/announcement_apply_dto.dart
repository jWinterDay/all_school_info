import 'package:domain/src/redux/common/models/doc_apply_type.dart';

class AnnouncementApplyDto {
  AnnouncementApplyDto({
    required this.docApplyType,
    required this.id,
    this.data,
  });

  final DocApplyType docApplyType;

  final String id;

  final Map<String, dynamic>? data;
}
