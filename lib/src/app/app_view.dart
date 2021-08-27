import 'package:all_school_info/src/generated/l10n.dart';
import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:domain/domain.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

class AppView extends StatelessWidget {
  final gr.AppRouter _appRouter = gr.AppRouter();

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: AppDomainProvider.appStore,
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
              textScaleFactor: AppDomainProvider.appStore.state.settingsState.fontScale,
            ),
            child: child ?? const SizedBox(),
          );
        },
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
