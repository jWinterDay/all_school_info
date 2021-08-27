import 'package:domain/domain.dart';

class ProfileBloc {
  void refresh() {
    AppDomainProvider.appStore.dispatch(fetchUserThunk);
  }

  void dispose() {}
}
