import 'dart:async';

import 'package:computer/computer.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:utils/logger.dart';

Future<Palette> initPalette() async {
  final CustomColors? customColors = await CustomColors.loadAsync('assets/theme/base.json');
  if (customColors == null) {
    throw const FormatException('Can not parse customColors');
  }
  final Palette palette = Palette(customColors: customColors);

  return palette;
}

/// `init app`
Future<void> initApp({bool useMock = false}) async {
  // di
  initDomainDI(useMock: useMock);
  await _initAppDI();

  final AppDomain appDomain = getIt.get<AppDomain>();
  appDomain
    ..init()
    ..appStore.dispatch(SettingsAction.changeTestMode(value: useMock));

  // firebase
  await Firebase.initializeApp();
  await _setupRemoteConfig();
  await _pushNotifications();
  await _cloudStorage();
  await _setupCrashlitics();
}

/// `crashlitics`
Future<void> _setupCrashlitics() async {
  FlutterError.onError = (FlutterErrorDetails details) async {
    await FirebaseCrashlytics.instance.recordFlutterError(details);
  };
}

/// `di`
Future<void> _initAppDI() async {
  final Computer computer = Computer();

  getIt.registerSingleton(computer);

  await computer.turnOn(
    workersCount: 1,
    // verbose: true,
  );
}

/// `firebase remote config`
Future<void> _setupRemoteConfig() async {
  final RemoteConfig remoteConfig = RemoteConfig.instance;

  await remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: const Duration(minutes: 60),
    ),
  );

  await remoteConfig.setDefaults(<String, dynamic>{
    'top_announcement_count': 3,
  });

  RemoteConfigValue(null, ValueSource.valueStatic);

  // apply values to domain
  final AppDomain appDomain = getIt.get<AppDomain>();
  try {
    await remoteConfig.fetchAndActivate();
  } catch (exc, stackTrace) {
    logger.e('$exc', exc.runtimeType, stackTrace);
  }

  final int topAnnouncementCount = remoteConfig.getInt('top_announcement_count');
  appDomain.appStore.dispatch(CommonAction.topAnnouncementCount(value: topAnnouncementCount));
}

/// `push notifications`
Future<void> _pushNotifications() async {
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  await firebaseMessaging.requestPermission();
  // print('User granted permission: ${settings.authorizationStatus}');

  final String? token = await firebaseMessaging.getToken();
  print('fb token = $token');
  final AppDomain appDomain = getIt.get<AppDomain>();
  appDomain.appStore.dispatch(CommonAction.setFcmToken(value: token));

  // listeners
  // token refresh
  firebaseMessaging.onTokenRefresh.listen((String token) {
    appDomain.appStore.dispatch(CommonAction.setFcmToken(value: token));
  });

  // foreground message
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    // print('Message data: ${message.data}');

    if (message.notification != null) {
      // print('Message also contained a notification: ${message.notification?.title} > ${message.notification?.body}');
    }
  });

  // initial message
  final RemoteMessage? remoteMessage = await firebaseMessaging.getInitialMessage();
  if (remoteMessage != null) {
    // print('------- getInitialMessage ${remoteMessage.data}');
  }
  await firebaseMessaging.setAutoInitEnabled(true);

  // opened app
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage remoteMessage) {
    // print('------- onMessageOpenedApp ${remoteMessage.data}');
  });

  // background message
  FirebaseMessaging.onBackgroundMessage(_backgroundMessageHandler);
}

Future<dynamic> _backgroundMessageHandler(RemoteMessage remoteMessage) async {
  print('------- backgroundMessageHandler ${remoteMessage.data}');
}

/// `cloud storage`
Future<void> _cloudStorage() async {
  //
}
