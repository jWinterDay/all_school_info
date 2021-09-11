// import 'package:all_school_info/src/announcement/announcement_view.dart';
// import 'package:all_school_info/src/home/home_view.dart';
import 'package:all_school_info/src/feature/announcement/details/announcement_details_view.dart';
import 'package:all_school_info/src/feature/announcement/edit/announcement_edit_view.dart';
import 'package:all_school_info/src/feature/announcement/list/announcement_list_view.dart';
import 'package:all_school_info/src/feature/auth/auth_view.dart';
import 'package:all_school_info/src/feature/profile/profile_view.dart';
import 'package:all_school_info/src/feature/schedule/details/schedule_details_view.dart';
import 'package:all_school_info/src/feature/schedule/list/schedule_view.dart';
import 'package:all_school_info/src/home/home_view.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@CustomAutoRouter(
  replaceInRouteName: 'View',
  // ignore: always_specify_types
  routes: [
    // MaterialRoute<Object>(
    //   path: '/',
    //   initial: true,
    //   page: SplashView,
    // ),

    // home with tabs
    MaterialRoute<Object>(
      page: HomeView,
      path: '/home',
      initial: true,
      // customRouteBuilder: dialogRouteBuilder,
      children: <AutoRoute<Object>>[
        // announcements
        MaterialRoute<Object>(
          path: 'announcements',
          initial: true,
          // customRouteBuilder: dialogRouteBuilder,
          page: AnnouncementListView,
        ),

        // schedule
        MaterialRoute<Object>(
          path: 'schedule',
          // customRouteBuilder: dialogRouteBuilder,
          page: ScheduleView,
          // children: <AutoRoute<Object>>[
          //   AutoRoute<Object>(path: 'details', initial: true, fullscreenDialog: true, page: ScheduleDetailsView),
          // ],
        ),

        // profile
        AutoRoute<Object>(path: 'profile', page: ProfileView),
      ],
    ),

    // TODO nested navigation
    // announcement detail
    CupertinoRoute<Object>(
      path: 'announcement/details/:id',
      // customRouteBuilder: dialogRouteBuilder,
      page: AnnouncementDetailsView,
    ),
    CupertinoRoute<Object>(
      path: 'announcement/edit/:id&mode=:mode',
      page: AnnouncementEditView,
      // customRouteBuilder: dialogRouteBuilder,
      // fullscreenDialog: true,
    ),
    // CupertinoRoute<Object>(
    //   path: 'announcement/default',
    //   page: DefaultAnnouncementView,
    //   // customRouteBuilder: dialogRouteBuilder,
    //   // fullscreenDialog: true,
    // ),

    // TODO nested navigation
    CupertinoRoute<Object>(
      path: 'schedule/details',
      // customRouteBuilder: dialogRouteBuilder,
      page: ScheduleDetailsView,
    ),

    CupertinoRoute<Object>(
      path: 'auth',
      page: AuthView,
    ),

    RedirectRoute(path: '*', redirectTo: '/')
  ],
)
class $AppRouter {}
