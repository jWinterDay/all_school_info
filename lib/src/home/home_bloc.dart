import 'package:domain/domain.dart';

class HomeBloc {
  AppDomain get _appDomain => getIt.get<AppDomain>();

  void init() {
    _appDomain.appStore.dispatch(fetchUserThunk);
  }

  void dispose() {}
}
