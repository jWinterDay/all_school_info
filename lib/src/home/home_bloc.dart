import 'package:domain/domain.dart';

class HomeBloc {
  void init() {
    final AppDomain appDomain = getIt.get<AppDomain>();

    appDomain.appStore.dispatch(fetchUserThunk);
  }

  void dispose() {}
}
