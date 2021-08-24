import 'package:flutter/material.dart';
import 'package:domain/domain.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
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
          body: GestureDetector(
            onTap: () {
              AppDomainProvider.appStore.dispatch(
                UserLoggedInAction(loggedIn: !AppDomainProvider.appStore.state.userState.loggedIn),
              );
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
        ),
      ),
    );
  }
}
