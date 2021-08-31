import 'package:flutter/material.dart' show Color, IconData;

class UiScheduleItem {
  const UiScheduleItem({
    required this.title,
    this.addTitle,
    this.icon,
    required this.iconColor,
  });

  final String title;

  final String? addTitle;

  final IconData? icon;

  final Color iconColor;
}
