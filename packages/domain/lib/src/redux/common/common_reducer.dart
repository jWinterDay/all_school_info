import 'common_action.dart';
import 'common_state.dart';

CommonState commonReducer(CommonState s, dynamic a) {
  if (a is CommonAction) {
    return a.maybeMap<CommonState>(
      // ignore: always_specify_types
      setErrorModel: (actionEvent) => s.copyWith(errorModel: actionEvent.value),
      clearErrorModel: (_) => s.copyWith(errorModel: null),
      orElse: () {
        return s;
      },
    );
  }

  return s;
}
