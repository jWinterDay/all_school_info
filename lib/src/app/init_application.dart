import 'dart:async';

import 'package:computer/computer.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';

// TODO
const bool useMock = kDebugMode && true;

Future<Palette> initPalette() async {
  final CustomColors? customColors = await CustomColors.loadAsync('assets/theme/base.json');
  if (customColors == null) {
    throw const FormatException('Can not parse customColors');
  }
  final Palette palette = Palette(customColors: customColors);

  return palette;
}

Future<void> initApp() async {
  initDomainDI(useMock: useMock);
  await _initAppDI();

  final AppDomain appDomain = getIt.get<AppDomain>();
  appDomain
    ..init()
    ..appStore.dispatch(const SettingsAction.changeTestMode(value: useMock));
}

Future<void> _initAppDI() async {
  final Computer computer = Computer();

  getIt.registerSingleton(computer);

  await computer.turnOn(
    workersCount: 3,
    verbose: true,
  );
}
