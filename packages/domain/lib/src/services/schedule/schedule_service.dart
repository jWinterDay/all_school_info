import 'package:domain/src/redux/schedule/models/lesson_model.dart';

abstract class ScheduleService {
  Future<List<LessonModel>> fetchLessons(DateTime date);
}
