import 'dart:async';

import 'package:all_school_info/src/app/app_view.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:utils/logger.dart';

import 'src/app/init_application.dart';

void main({bool useMock = false}) {
  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded<void>(
    () => _run(useMock: useMock),
    (Object error, StackTrace stackTrace) {
      logger.e(error, error.toString(), stackTrace);
    },
  );
}

Future<void> _run({bool useMock = false}) async {
  await initApp(useMock: useMock);
  final Palette palette = await initPalette();

  runApp(
    Design(
      palette: palette,
      child: AppView(),
    ),
  );
}
