// import 'package:computer/computer.dart';
import 'package:domain/domain.dart';

import 'schedule_service.dart';

class ScheduleServiceMock implements ScheduleService {
  @override
  Future<List<LessonModel>> fetchLessons(DateTime date) async {
    await Future<void>.delayed(const Duration(seconds: 1));

    return <LessonModel>[
      LessonModel('math', date.millisecondsSinceEpoch, 'Ivanova'),
      LessonModel('rus', date.millisecondsSinceEpoch, 'Petrova'),
      LessonModel('phys', date.millisecondsSinceEpoch, 'Sidorova'),
    ];
  }
}
