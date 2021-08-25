import 'package:all_school_info/src/announcement/announcement_view.dart';
import 'package:all_school_info/src/generated/l10n.dart';
import 'package:all_school_info/src/home/home_view.dart';
import 'package:all_school_info/src/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:domain/domain.dart';
import 'package:flutter_redux/flutter_redux.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: AppDomainProvider.appStore,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
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
              textScaleFactor: AppDomainProvider.appStore.state.fontScale,
            ),
            child: child ?? const SizedBox(),
          );
        },
        initialRoute: Routes.home,
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case Routes.home:
              return MaterialPageRoute<dynamic>(
                settings: settings,
                builder: (_) => HomeView(),
              );
            case Routes.announcement:
              return CupertinoPageRoute<dynamic>(
                settings: settings,
                builder: (_) => const AnnouncementView(),
              );
            default:
              return CupertinoPageRoute<dynamic>(
                settings: settings,
                builder: (_) => const Center(
                    child: Text(
                  'Unknown route',
                )),
              );
          }
        },
      ),
    );
  }
}
