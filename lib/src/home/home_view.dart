import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:all_school_info/src/generated/l10n.dart';
import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const <PageRouteInfo<dynamic>>[
        gr.AnnouncementListViewRoute(),
        gr.ProfileViewRoute(),
      ],
      builder: (BuildContext context, Widget child, Animation<double> animation) {
        final TabsRouter tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(AllSchoolInfoIntl.of(context).mainTitle),
          ),
          body: SizeTransition(
            sizeFactor: animation,
            //) FadeTransition(
            // scale: animation,
            // opacity: animation,
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.g_translate),
                label: '1_tab',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.face_retouching_off_rounded),
                label: '2_tab',
              ),
            ],
          ),
        );
      },
    );
  }
}
