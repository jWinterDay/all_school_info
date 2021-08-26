import 'dart:async';

import 'package:design/design.dart' as design;
import 'package:domain/domain.dart' as domain;
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
  // TODO get from global settings
  const bool useMock = true;

  await domain.initDomain(useMock: kDebugMode && useMock);
}