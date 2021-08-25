import 'dart:async';

import 'package:all_school_info/src/app/app.dart';
import 'package:flutter/material.dart';
import 'package:utils/logger.dart';

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
  //   await Palette.init();
  // final DesignData design = await DesignData().initAsync();

  runApp(MyApp());
}
