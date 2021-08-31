import 'dart:async';

import 'package:computer/computer.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

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
  // di
  initDomainDI(useMock: useMock);
  await _initAppDI();

  // app domain
  final AppDomain appDomain = getIt.get<AppDomain>();
  appDomain
    ..init()
    ..appStore.dispatch(const SettingsAction.changeTestMode(value: useMock));

  // firebase remote config
  final RemoteConfig config = await _setupRemoteConfig();

  await config.fetchAndActivate();

  final int topAnnouncementCount = config.getInt('top_announcement_count');
  appDomain.appStore.dispatch(CommonAction.topAnnouncementCount(value: topAnnouncementCount));
}

Future<void> _initAppDI() async {
  final Computer computer = Computer();

  getIt.registerSingleton(computer);

  await computer.turnOn(
    workersCount: 1,
    verbose: true,
  );
}

Future<RemoteConfig> _setupRemoteConfig() async {
  await Firebase.initializeApp();
  final RemoteConfig remoteConfig = RemoteConfig.instance;

  await remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: const Duration(seconds: 20),
    ),
  );

  await remoteConfig.setDefaults(<String, dynamic>{
    'top_announcement_count': 3,
  });

  RemoteConfigValue(null, ValueSource.valueStatic);

  return remoteConfig;
}
