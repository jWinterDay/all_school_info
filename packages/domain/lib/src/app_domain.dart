import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'redux/app/app_reducer.dart';
import 'redux/app/app_state.dart';

// singleton
class AppDomain {
  AppDomain();

  late final Store<AppState> _appStore;
  Store<AppState> get appStore => _appStore;

  void init() {
    _appStore = Store<AppState>(
      appReducer,
      initialState: const AppState(),
      // ignore: always_specify_types
      middleware: [
        thunkMiddleware,
        // loggingMiddleware,
      ],
    );
  }
}
