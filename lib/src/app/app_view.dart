import 'package:all_school_info/src/generated/l10n.dart';
import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:domain/domain.dart';
import 'package:flutter_redux/flutter_redux.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

class _Observer extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('New route pushed: ${route.settings.name} prev: ${previousRoute?.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('did pop ${route.settings.name}');
  }

  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('did remove ${route.settings.name}');
  }

  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    print('new ${newRoute?.settings.name} old ${oldRoute?.settings.name}');
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    print('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    print('Tab route re-visited: ${route.name}');
  }
}

class AppView extends StatelessWidget {
  final gr.AppRouter _appRouter = gr.AppRouter();

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: getIt.get<AppDomain>().appStore,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
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
