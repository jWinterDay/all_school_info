import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:all_school_info/src/generated/l10n.dart';

import 'tab_info.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final CupertinoTabController _tabController = CupertinoTabController();

  final List<TabItem> _tabItemList = TabInfo.tabItemList;

  // @override
  // void initState() {
  //   super.initState();

  //   // _initTabController();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AllSchoolInfoIntl.of(context).mainTitle),
      ),
      body: CupertinoTabScaffold(
        controller: _tabController,
        tabBuilder: (BuildContext context, int index) {
          return _tabItemList[index].tabView;
        },
        tabBar: CupertinoTabBar(
          items: _tabItemList.map((TabItem e) => e.bottomBarItem).toList(),
        ),
      ),
    );
  }
}
