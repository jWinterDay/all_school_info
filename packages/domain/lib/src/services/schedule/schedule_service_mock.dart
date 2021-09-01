// import 'package:computer/computer.dart';
import 'package:domain/domain.dart';

import 'schedule_service.dart';

class ScheduleServiceMock implements ScheduleService {
  @override
  Future<List<LessonModel>> fetchLessons(DateTime date) async {
    await Future<void>.delayed(const Duration(seconds: 1));

    return <LessonModel>[
      LessonModel(
        'math',
        DateTime(date.year, date.month, date.day, 8, 15).millisecondsSinceEpoch,
        'Ivanova',
      ),
      LessonModel(
        'rus',
        DateTime(date.year, date.month, date.day, 9, 25).millisecondsSinceEpoch,
        'Petrova',
      ),
      LessonModel(
        'phys',
        DateTime(date.year, date.month, date.day, 10, 45).millisecondsSinceEpoch,
        'Sidorova',
      ),
    ];
  }
}
