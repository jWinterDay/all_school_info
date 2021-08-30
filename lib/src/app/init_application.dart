import 'dart:async';

import 'package:computer/computer.dart';
import 'package:design/design.dart' as design;
import 'package:domain/domain.dart' as domain;
import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';

Future<design.Palette> initPalette() async {
  final design.CustomColors? customColors = await design.CustomColors.loadAsync('assets/theme/base.json');
  if (customColors == null) {
    throw const FormatException('Can not parse customColors');
  }
  final design.Palette palette = design.Palette(customColors: customColors);

  return palette;
}

Future<void> initDomain() async {
  // TODO
  const bool useMock = kDebugMode && true;

  AppDomainProvider.appStore.dispatch(const SettingsAction.changeTestMode(value: useMock));

  // computer
  final Computer computer = Computer();
  await computer.turnOn(
    // workersCount: 3,
    verbose: true,
  );

  // domain
  await domain.initDomain(
    useMock: useMock,
    computer: computer,
  );
}
