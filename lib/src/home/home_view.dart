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
        gr.ScheduleViewRoute(),
        gr.ProfileViewRoute(),
      ],
      builder: (BuildContext context, Widget child, Animation<double> animation) {
        final TabsRouter tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(
              AllSchoolInfoIntl.of(context).mainTitle,

              // style: Theme.of(context).appBarTheme.textTheme?.caption,
            ),
            centerTitle: true,
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
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: const Icon(Icons.g_translate),
                label: AllSchoolInfoIntl.of(context).announcementsTabTitle,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.yard),
                label: AllSchoolInfoIntl.of(context).scheduleViewTitle,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.face_retouching_off_rounded),
                label: AllSchoolInfoIntl.of(context).profileTabTitle,
              ),
            ],
          ),
        );
      },
    );
  }
}
