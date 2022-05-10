// import 'package:computer/computer.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/services/schedule/schedule_service_impl.dart';
import 'package:domain/src/services/schedule/schedule_service_mock.dart';
import 'package:domain/src/services/user/user_service_impl.dart';
import 'package:domain/src/services/user/user_service_mock.dart';
import 'package:get_it/get_it.dart';

import 'services/announcement/announcement_service.dart';
import 'services/announcement/announcement_service_impl.dart';
import 'services/announcement/announcement_service_mock.dart';
import 'services/schedule/schedule_service.dart';
import 'services/user/user_service.dart';

final GetIt getIt = GetIt.instance;

Future<void> initDomainDI({required bool useMock}) async {
  if (useMock) {
    getIt.registerSingleton<AnnouncementService>(AnnouncementServiceMock());
    getIt.registerSingleton<UserService>(UserServiceMock());
    getIt.registerSingleton<ScheduleService>(ScheduleServiceMock());
  } else {
    getIt.registerSingleton<AnnouncementService>(AnnouncementServiceImpl());
    getIt.registerSingleton<UserService>(UserServiceImpl());
    getIt.registerSingleton<ScheduleService>(ScheduleServiceImpl());
  }

  // common
  getIt.registerSingleton<AppDomain>(AppDomain());
}
