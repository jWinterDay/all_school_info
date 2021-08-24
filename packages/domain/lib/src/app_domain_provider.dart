import 'package:redux/redux.dart';

import 'redux/app/app_reducer.dart';
import 'redux/app/app_state.dart';

abstract class AppDomainProvider {
  AppDomainProvider._();

  static final Store<AppState> _appStore = Store<AppState>(
    appReducer,
    initialState: const AppState(),
    // middleware: [
    //   loggingMiddleware,
    // ],
  );

  static Store<AppState> get appStore => _appStore;
}
