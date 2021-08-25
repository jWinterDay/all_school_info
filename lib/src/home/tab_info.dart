import 'package:all_school_info/src/announcement_list/announcement_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabItem {
  TabItem({
    required this.bottomBarItem,
    required this.tabView,
  });

  final BottomNavigationBarItem bottomBarItem;

  final CupertinoTabView tabView;
}

abstract class TabInfo {
  static List<TabItem> tabItemList = <TabItem>[
    // home
    TabItem(
      bottomBarItem: const BottomNavigationBarItem(
        icon: Icon(Icons.g_translate),
        label: '1_tab',
      ),
      tabView: CupertinoTabView(
        builder: (BuildContext context) {
          return const AnnouncementListView();
        },
      ),
    ),

    // profile
    TabItem(
      bottomBarItem: const BottomNavigationBarItem(
        icon: Icon(Icons.face_retouching_off_rounded),
        label: '2_tab',
      ),
      tabView: CupertinoTabView(
        builder: (BuildContext context) {
          return const Text('fsdfs');
        },
      ),
    ),
  ];
}
