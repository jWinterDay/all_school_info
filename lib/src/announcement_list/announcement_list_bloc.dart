import 'package:domain/domain.dart';

class AnnouncementListBloc {
  void refresh() {
    AppDomainProvider.appStore.dispatch(fetchAnnouncementsThunk);
  }

  void dispose() {
    AppDomainProvider.appStore.dispatch(
      const AnnouncementAction.cleanUp(),
    );
  }
}
