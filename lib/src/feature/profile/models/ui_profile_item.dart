import 'package:flutter/material.dart' show IconData, Widget;

class UiProfileItem {
  const UiProfileItem({
    required this.title,
    this.addTitle,
    this.icon,
    this.trailing,
    this.needArrow = true,
    this.subItem = false,
  });

  final String title;

  final String? addTitle;

  final IconData? icon;

  final Widget? trailing;

  final bool needArrow;

  final bool subItem;
}
