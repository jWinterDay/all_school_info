import 'dart:async';

import 'package:computer/computer.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

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

/// `init app`
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
  await _setupRemoteConfig();

  await _pushNotifications();
}

/// `di`
Future<void> _initAppDI() async {
  final Computer computer = Computer();

  getIt.registerSingleton(computer);

  await computer.turnOn(
    workersCount: 1,
    verbose: true,
  );
}

/// `firebase remote config`
Future<void> _setupRemoteConfig() async {
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

  //
  final AppDomain appDomain = getIt.get<AppDomain>();
  await remoteConfig.fetchAndActivate();

  final int topAnnouncementCount = remoteConfig.getInt('top_announcement_count');
  appDomain.appStore.dispatch(CommonAction.topAnnouncementCount(value: topAnnouncementCount));

  // return remoteConfig;
}

/// `push notifications`
Future<void> _pushNotifications() async {
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  // final NotificationSettings settings =
  await firebaseMessaging.requestPermission(
      // alert: true,
      // announcement: false,
      // badge: true,
      // carPlay: false,
      // criticalAlert: false,
      // provisional: false,
      // sound: true,
      );
  // print('User granted permission: ${settings.authorizationStatus}');

  final String? token = await firebaseMessaging.getToken();
  print('fcm token = $token');
  final AppDomain appDomain = getIt.get<AppDomain>();
  appDomain.appStore.dispatch(CommonAction.setFcmToken(value: token));

  // listeners
  // token refresh
  firebaseMessaging.onTokenRefresh.listen((String token) {
    appDomain.appStore.dispatch(CommonAction.setFcmToken(value: token));
  });

  // foreground message
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });

  // initial message
  final RemoteMessage? remoteMessage = await firebaseMessaging.getInitialMessage();
  if (remoteMessage != null) {
    print('------- getInitialMessage $remoteMessage');
  }
  // .then((RemoteMessage remoteMessage) async {
  //   if (remoteMessage != null) {
  //     globals.logger.d('Push Messaging onResume: $remoteMessage');
  //     trackEvent(remoteMessage: remoteMessage, event: 'click');
  //     // Doubled deeplink message handling on Android. See MBL-5287
  //     if (!globals.isAndroid) {
  //       await _linkHandler(remoteMessage.data, api);
  //     }
  //   }
  // });
  await firebaseMessaging.setAutoInitEnabled(true);

  // opened app
  // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage remoteMessage) {
  //   print('------- onMessageOpenedApp $remoteMessage');
  // });

  // // background message
  FirebaseMessaging.onBackgroundMessage(_backgroundMessageHandler);
}

Future<dynamic> _backgroundMessageHandler(RemoteMessage remoteMessage) async {
  await Firebase.initializeApp();

  print('------- backgroundMessageHandler ${remoteMessage.data}');
}
