import 'dart:async';

import 'package:all_school_info/src/app/app.dart';
import 'package:flutter/material.dart';
import 'package:utils/logger.dart';
import 'package:design/design.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded<void>(
    _run,
    (Object error, StackTrace stackTrace) {
      logger.e(error, error.toString(), stackTrace);
    },
  );
}

Future<void> _run() async {
  final CustomColors? customColors = await CustomColors.loadAsync('assets/theme/base.json');
  if (customColors == null) {
    throw const FormatException('Can not parse customColors');
  }

  final Palette palette = await Palette(customColors: customColors);

  runApp(
    Design(
      palette: palette,
      child: MyApp(),
    ),
  );
}
