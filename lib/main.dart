import 'dart:async';

import 'package:all_school_info/src/announcement/announcement_view.dart';
import 'package:flutter/material.dart';
import 'package:domain/domain.dart';
import 'package:utils/logger.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded<void>(
    _run,
    (Object error, StackTrace stackTrace) {
      logger.e(error, error.toString(), stackTrace);
    },
  );
}

Future<void> _run() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: AppDomainProvider.appStore,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'All School Info',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('All School Info'),
          ),
          body: Column(
            children: <Widget>[
              // test
              GestureDetector(
                onTap: () {
                  AppDomainProvider.appStore.dispatch(
                    AppDomainProvider.appStore.dispatch(fetchAnnouncementsThunk),
                    // const AnnouncementAction.addAnnouncement(
                    //   announcement: AnnouncementModel(title: 'new title', content: 'new content'),
                    // ),
                  );
                  // AppDomainProvider.appStore.dispatch(
                  //   UserLoggedInAction(loggedIn: !AppDomainProvider.appStore.state.userState.loggedIn),
                  // );
                },
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: ColoredBox(
                    color: Colors.green,
                    child: StoreConnector<AppState, bool>(
                      converter: (Store<AppState> store) => store.state.userState.loggedIn,
                      builder: (_, bool loggedIn) {
                        return Text(
                          'logged: $loggedIn',
                        );
                      },
                    ),
                  ),
                ),
              ),

              // announcement
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: const AnnouncementView(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
