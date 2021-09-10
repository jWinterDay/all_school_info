import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension ContextExtention on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  EdgeInsets get padding => mediaQuery.padding;
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;
  double get devicePixelRatio => mediaQuery.devicePixelRatio;
  Design get design => Design.of(this);
  Palette get palette => design.palette;
  Orientation get orientation => mediaQuery.orientation;
  bool get smallDevice => width <= 320;
}
