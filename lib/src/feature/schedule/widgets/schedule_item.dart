import 'package:all_school_info/src/feature/schedule/models/ui_schedule_item.dart';
import 'package:flutter/material.dart';
// import 'package:design/design.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem({
    required this.uiScheduleItem,
  });

  final UiScheduleItem uiScheduleItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2, top: 24),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Icon(
              uiScheduleItem.icon,
              color: uiScheduleItem.iconColor,
              size: 32,
            ),
          ),
          Text(uiScheduleItem.title),
        ],
      ),
    );
  }
}
