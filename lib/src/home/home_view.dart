import 'package:all_school_info/src/generated/l10n.dart';
import 'package:all_school_info/src/models/card_view_mode.dart';
import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'home_bloc.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeBloc _bloc = HomeBloc();

  @override
  void initState() {
    super.initState();

    _bloc.init();
  }

  @override
  void dispose() {
    _bloc.dispose();

    super.dispose();
  }

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

        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            leading: const _LeftAppMenu(),
            trailing: const _TestModeLabel(),
            middle: Text(
              AllSchoolInfoIntl.of(context).mainTitle,
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
            backgroundColor: context.design.palette.primary,
          ),
          child: Scaffold(
            floatingActionButton: tabsRouter.activeIndex == 0 ? const _FloatingActionButton() : null,
            body: SizeTransition(
              sizeFactor: animation,
              child: child,
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: <BottomNavigationBarItem>[
                // announcements
                BottomNavigationBarItem(
                  icon: StoreConnector<AppState, AnnouncementState>(
                    distinct: true,
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
                    distinct: true,
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
          ),
        );
      },
    );
  }
}

class _LeftAppMenu extends StatelessWidget {
  const _LeftAppMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //
      },
      child: Icon(
        Icons.keyboard_control_sharp,
        color: context.design.palette.gray50,
      ),
    );
  }
}

class _TestModeLabel extends StatelessWidget {
  const _TestModeLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      distinct: true,
      converter: (Store<AppState> store) => store.state.settingsState.testMode,
      builder: (_, bool testMode) {
        if (!testMode) {
          return const SizedBox();
        }

        return Padding(
          padding: const EdgeInsets.only(left: 4, top: 4),
          child: Text(
            'Test mode',
            style: Theme.of(context).textTheme.bodyText1?.apply(color: context.design.palette.danger),
          ),
        );
      },
    );
  }
}

class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      distinct: true,
      converter: (Store<AppState> store) => store.state.userState.canCreateAnnouncements,
      builder: (_, bool canCreateAnnouncements) {
        if (!canCreateAnnouncements) {
          return const SizedBox();
        }

        return FloatingActionButton(
          onPressed: () async {
            await AutoRouter.of(context).push(
              gr.AnnouncementEditViewRoute(cardViewMode: CardViewMode.add.nameStr),
            );
          },
          child: const Icon(Icons.add),
          backgroundColor: context.design.palette.primary,
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
