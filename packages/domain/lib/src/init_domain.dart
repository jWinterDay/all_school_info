import 'package:get_it/get_it.dart';

import 'services/announcement/announcement_service.dart';
import 'services/announcement/announcement_service_impl.dart';
import 'services/announcement/announcement_service_mock.dart';

final GetIt getIt = GetIt.instance;

Future<void> initDomain({required bool useMock}) async {
  if (useMock) {
    getIt.registerSingleton<AnnouncementService>(AnnouncementServiceMock());
  } else {
    getIt.registerSingleton<AnnouncementService>(AnnouncementServiceImpl());
  }
}
