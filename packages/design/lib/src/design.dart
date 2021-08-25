import 'package:flutter/material.dart';

import 'palette.dart';

class Design extends InheritedWidget {
  Design({
    Key? key,
    required this.palette,
    required this.child,
  }) : super(
          key: key,
          child: child,
        );

  @override
  final Widget child;

  Palette palette;

  static Design of(BuildContext context) {
    final Design inherited = context.dependOnInheritedWidgetOfExactType<Design>()!;
    return inherited;
  }

  @override
  bool updateShouldNotify(Design oldWidget) {
    return true;
  }
}
