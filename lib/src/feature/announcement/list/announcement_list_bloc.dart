import 'package:domain/domain.dart';

class AnnouncementListBloc {
  void refresh() {
    getIt.get<AppDomain>().appStore.dispatch(fetchAnnouncementsThunk);
  }

  void dispose() {
    getIt.get<AppDomain>().appStore.dispatch(const AnnouncementAction.cleanUp());
  }
}
