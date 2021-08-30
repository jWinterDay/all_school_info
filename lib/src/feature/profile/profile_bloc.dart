import 'package:domain/domain.dart';

class ProfileBloc {
  void refresh() {
    getIt.get<AppDomain>().appStore.dispatch(fetchUserThunk);
  }

  void dispose() {}
}
