import 'package:domain/domain.dart';

class HomeBloc {
  AppDomain get _appDomain => getIt.get<AppDomain>();

  void init() {
    // appDomain.appStore.dispatch(fetchUserThunk);
  }

  void dispose() {}
}
