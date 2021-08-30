import 'dart:async';

import 'package:all_school_info/src/app/app_view.dart';
import 'package:flutter/material.dart';
import 'package:utils/logger.dart';
import 'package:design/design.dart';

import 'src/app/init_application.dart';

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
  await initApp();
  final Palette palette = await initPalette();

  runApp(
    Design(
      palette: palette,
      child: AppView(),
    ),
  );
}
