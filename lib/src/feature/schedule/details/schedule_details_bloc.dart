import 'package:domain/domain.dart';

class ScheduleDetailsBloc {
  DateTime? _date;

  void setDate(DateTime date) {
    _date = date;
  }

  void refresh() {
    getIt.get<AppDomain>().appStore.dispatch(fetchScheduleThunk);
  }

  void dispose() {}
}
