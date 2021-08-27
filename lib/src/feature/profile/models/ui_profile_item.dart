import 'package:flutter/material.dart' show IconData, Widget;

class UiProfileItem {
  UiProfileItem({
    required this.title,
    this.addTitle,
    required this.icon,
    this.trailing,
    this.needArrow = true,
  });

  final String title;

  final String? addTitle;

  final IconData icon;

  final Widget? trailing;

  final bool needArrow;
}
