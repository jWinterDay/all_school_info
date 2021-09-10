import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final DateFormat _dateFormat = DateFormat('HH:mm', 'ru');

class LessonItem extends StatelessWidget {
  const LessonItem({
    Key? key,
    required this.lessonModel,
  }) : super(key: key);

  final LessonModel lessonModel;

  String get _format {
    final DateTime date = DateTime.fromMillisecondsSinceEpoch(lessonModel.dateUnixMs);

    return _dateFormat.format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Row(
        children: <Widget>[
          // icon
          Icon(
            Icons.task_alt_sharp,
            color: context.design.palette.startProgress,
          ),

          // date
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 8),
            child: SizedBox(
              width: 50,
              child: Text(_format),
            ),
          ),

          // lesson name
          Expanded(
            child: Text(lessonModel.lessonName),
          ),

          // teacher name
          Text(lessonModel.teacherName)
        ],
      ),
    );
  }
}
