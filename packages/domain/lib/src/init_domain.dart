import 'package:computer/computer.dart';
import 'package:domain/src/services/user/user_service_impl.dart';
import 'package:domain/src/services/user/user_service_mock.dart';
import 'package:get_it/get_it.dart';

import 'services/announcement/announcement_service.dart';
import 'services/announcement/announcement_service_impl.dart';
import 'services/announcement/announcement_service_mock.dart';
import 'services/user/user_service.dart';

final GetIt getIt = GetIt.instance;

Future<void> initDomain({required bool useMock, required Computer computer}) async {
  assert(computer.isRunning);

  // common
  getIt.registerSingleton<Computer>(Computer());

  if (useMock) {
    getIt.registerSingleton<AnnouncementService>(AnnouncementServiceMock());
    getIt.registerSingleton<UserService>(UserServiceMock());
  } else {
    getIt.registerSingleton<AnnouncementService>(AnnouncementServiceImpl());
    getIt.registerSingleton<UserService>(UserServiceImpl());
  }
}
