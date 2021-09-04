import 'package:all_school_info/src/generated/l10n.dart';
import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:domain/domain.dart';
import 'package:flutter_redux/flutter_redux.dart';

class _Observer extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // print('New route pushed: ${route.settings.name} prev: ${previousRoute?.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // print('did pop ${route.settings.name}');
  }
  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // print('did remove ${route.settings.name}');
  }
  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    // print('new ${newRoute?.settings.name} old ${oldRoute?.settings.name}');
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    // print('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    // print('Tab route re-visited: ${route.name}');
  }
}

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> with WidgetsBindingObserver {
  final gr.AppRouter _appRouter = gr.AppRouter();

  @override
  void initState() {
    WidgetsBinding.instance?.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    AppLifecycle result;

    switch (state) {
      case AppLifecycleState.resumed:
        result = AppLifecycle.resumed;
        break;
      case AppLifecycleState.inactive:
        result = AppLifecycle.inactive;
        break;
      case AppLifecycleState.paused:
        result = AppLifecycle.paused;
        break;
      case AppLifecycleState.detached:
        result = AppLifecycle.detached;
        break;
      default:
        result = AppLifecycle.none;
    }

    getIt.get<AppDomain>().appStore.dispatch(CommonAction.changeAppLyfecycle(value: result));
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: getIt.get<AppDomain>().appStore,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        // theme: appTheme,
        theme: ThemeData(platform: TargetPlatform.iOS),
        supportedLocales: const <Locale>[
          Locale('ru'),
          Locale('en'),
        ],
        locale: const Locale('ru'),
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          AllSchoolInfoIntl.delegate,
        ],
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: getIt.get<AppDomain>().appStore.state.settingsState.fontScale,
            ),
            child: child ?? const SizedBox(),
          );
        },
        routerDelegate: AutoRouterDelegate(
          _appRouter,
          navigatorObservers: () {
            return <NavigatorObserver>[
              _Observer(),
            ];
          },
        ), // _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
