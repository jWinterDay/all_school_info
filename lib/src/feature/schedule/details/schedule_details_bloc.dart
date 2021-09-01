import 'package:domain/domain.dart';
import 'package:intl/intl.dart';

class ScheduleDetailsBloc {
  static final DateFormat _dateFormat = DateFormat('dd.MM.yyyy', 'ru');

  DateTime _date = DateTime.now();

  void setDate(DateTime date) {
    _date = date;
  }

  String get dateTimeAsStr {
    return _dateFormat.format(_date);
  }

  void refresh() {
    getIt.get<AppDomain>().appStore.dispatch(fetchScheduleThunk);
  }

  void dispose() {}
}
