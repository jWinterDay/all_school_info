import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart' as mbs;

Route<T> dialogRouteBuilder<T>(BuildContext context, Widget child, CustomPage<T> page) {
  return mbs.CupertinoModalBottomSheetRoute<T>(
    expanded: true,
    builder: (_) => child,
    settings: page,
  );
}
