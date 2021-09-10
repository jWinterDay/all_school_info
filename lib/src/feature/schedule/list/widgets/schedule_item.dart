import 'package:all_school_info/src/feature/schedule/list/models/ui_schedule_item.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem({
    Key? key,
    required this.uiScheduleItem,
  }) : super(key: key);

  final UiScheduleItem uiScheduleItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: uiScheduleItem.callback,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2, top: 24),
        child: Row(
          children: <Widget>[
            // icon with badge
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  // icon
                  Icon(
                    uiScheduleItem.icon,
                    color: uiScheduleItem.iconColor,
                    size: 32,
                  ),

                  // badge
                  if (uiScheduleItem.showBadge)
                    Positioned(
                      left: 24,
                      child: Container(
                        decoration: BoxDecoration(
                          color: context.palette.danger,
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                        ),
                        width: 12,
                        height: 12,
                      ),
                    ),
                ],
              ),
            ),

            // text
            Text(uiScheduleItem.title),
          ],
        ),
      ),
    );
  }
}
