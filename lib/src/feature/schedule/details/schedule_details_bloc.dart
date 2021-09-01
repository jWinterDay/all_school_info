import 'package:domain/domain.dart';
import 'package:intl/intl.dart';

class ScheduleDetailsBloc {
  static final DateFormat _dateFormat = DateFormat('dd.MM.yyyy');
  static final DateFormat _dayNameFormat = DateFormat('EEEE');

  DateTime _date = DateTime.now();

  void setDate(DateTime date) {
    _date = date;
  }

  String get dateTimeAsStr {
    final String dateStr = _dateFormat.format(_date);
    final String dayNameStr = _dayNameFormat.format(_date);

    return '$dateStr ($dayNameStr)';
  }

  void refresh() {
    getIt.get<AppDomain>().appStore.dispatch(fetchScheduleThunk);
  }

  void dispose() {}
}
