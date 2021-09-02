import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:all_school_info/src/generated/l10n.dart';
import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
import 'package:flutter_redux/flutter_redux.dart';
import 'package:design/design.dart';
import 'package:redux/redux.dart';

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
          floatingActionButton: tabsRouter.activeIndex == 0
              ? FloatingActionButton(
                  onPressed: () {
                    //
                  },
                  child: const Icon(Icons.add),
                  backgroundColor: context.design.palette.primary,
                )
              : null,
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
              // announcements
              BottomNavigationBarItem(
                icon: StoreConnector<AppState, AnnouncementState>(
                  converter: (Store<AppState> store) => store.state.announcementState,
                  builder: (_, AnnouncementState announcementState) {
                    return _TabWidthBadge(
                      icon: Icons.g_translate,
                      withBadge: announcementState.unreadList.isNotEmpty,
                    );
                  },
                ),
                label: AllSchoolInfoIntl.of(context).announcementsTabTitle,
              ),

              // schedule
              BottomNavigationBarItem(
                icon: StoreConnector<AppState, ScheduleState>(
                  converter: (Store<AppState> store) => store.state.scheduleState,
                  builder: (_, ScheduleState scheduleState) {
                    return _TabWidthBadge(
                      icon: Icons.hvac,
                      withBadge: scheduleState.hasAnyUpd,
                    );
                  },
                ),
                label: AllSchoolInfoIntl.of(context).scheduleViewTitle,
              ),

              // profile
              BottomNavigationBarItem(
                icon: const _TabWidthBadge(
                  icon: Icons.face_retouching_off_rounded,
                  withBadge: false,
                ),
                label: AllSchoolInfoIntl.of(context).profileTabTitle,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _TabWidthBadge extends StatelessWidget {
  const _TabWidthBadge({
    Key? key,
    required this.icon,
    required this.withBadge,
  }) : super(key: key);

  final IconData icon;
  final bool withBadge;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Icon(
          icon,
          size: 24,
        ),
        if (withBadge)
          Positioned(
            left: 18,
            child: Container(
              decoration: BoxDecoration(
                color: context.palette.danger,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              width: 12,
              height: 12,
            ),
          ),
      ],
    );
  }
}
