import 'package:all_school_info/src/announcement/announcement_view.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:all_school_info/src/generated/l10n.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final CupertinoTabController _tabController = CupertinoTabController(initialIndex: 0);
  final List<CupertinoTabView> _tabs = <CupertinoTabView>[];

  @override
  void initState() {
    super.initState();

// Determine if there is a bottom notch

    _initTabController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AllSchoolInfoIntl.of(context).mainTitle),
      ),
      body: CupertinoTabScaffold(
        controller: _tabController,
        tabBuilder: (BuildContext context, int index) {
          return _tabs[index];
        },
        tabBar: CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp), label: '1_tab'),
            BottomNavigationBarItem(icon: Icon(Icons.yard), label: '2_tab'),
          ],
        ),
      ),
      // body: Column(
      //   children: <Widget>[
      //     // test
      //     GestureDetector(
      //       onTap: () {
      //         AppDomainProvider.appStore.dispatch(
      //           AppDomainProvider.appStore.dispatch(fetchAnnouncementsThunk),
      //           // const AnnouncementAction.addAnnouncement(
      //           //   announcement: AnnouncementModel(title: 'new title', content: 'new content'),
      //           // ),
      //         );
      //         // AppDomainProvider.appStore.dispatch(
      //         //   UserLoggedInAction(loggedIn: !AppDomainProvider.appStore.state.userState.loggedIn),
      //         // );
      //       },
      //       child: SizedBox(
      //         height: 200,
      //         width: 200,
      //         child: ColoredBox(
      //           color: Colors.green,
      //           child: StoreConnector<AppState, bool>(
      //             converter: (Store<AppState> store) => store.state.userState.loggedIn,
      //             builder: (_, bool loggedIn) {
      //               return Text(
      //                 'logged: $loggedIn',
      //               );
      //             },
      //           ),
      //         ),
      //       ),
      //     ),

      //     // announcement
      //     Expanded(
      //       child: Container(
      //         color: Colors.blue,
      //         child: const AnnouncementView(),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }

  void _initTabController() {
    _tabs
      ..add(
        CupertinoTabView(
          builder: (BuildContext context) {
            return AnnouncementView();
            // Text('1');
          },
        ),
      )
      ..add(
        CupertinoTabView(
          builder: (BuildContext context) {
            return Text('2');
          },
        ),
      );
  }
}
