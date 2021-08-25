// ignore_for_file: always_use_package_imports
import 'package:domain/domain.dart';

class AnnouncementBloc {
  void refresh() {
    AppDomainProvider.appStore.dispatch(fetchAnnouncementsThunk);
  }

  void dispose() {
    AppDomainProvider.appStore.dispatch(
      const AnnouncementAction.cleanUp(),
    );
  }
}
