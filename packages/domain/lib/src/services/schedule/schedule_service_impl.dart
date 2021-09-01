import 'package:domain/src/redux/schedule/models/lesson_model.dart';

import 'schedule_service.dart';

class ScheduleServiceImpl implements ScheduleService {
  @override
  Future<List<LessonModel>> fetchLessons(DateTime date) {
    throw UnimplementedError();
  }
}
