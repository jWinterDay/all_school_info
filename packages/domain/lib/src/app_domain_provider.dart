import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'redux/app/app_reducer.dart';
import 'redux/app/app_state.dart';

abstract class AppDomainProvider {
  AppDomainProvider._();

  static Future<void> init() async {
    //
  }

  static final Store<AppState> _appStore = Store<AppState>(
    appReducer,
    initialState: const AppState(),
    // ignore: always_specify_types
    middleware: [
      thunkMiddleware,
      // loggingMiddleware,
    ],
  );

  static Store<AppState> get appStore => _appStore;
}
