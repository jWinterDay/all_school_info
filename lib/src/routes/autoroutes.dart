// import 'package:all_school_info/src/announcement/announcement_view.dart';
// import 'package:all_school_info/src/home/home_view.dart';
import 'package:all_school_info/src/feature/announcement/details/announcement_details_view.dart';
import 'package:all_school_info/src/feature/announcement/edit/announcement_edit_view.dart';
import 'package:all_school_info/src/feature/announcement/list/announcement_list_view.dart';
import 'package:all_school_info/src/feature/profile/profile_view.dart';
import 'package:all_school_info/src/feature/schedule/details/schedule_details_view.dart';
import 'package:all_school_info/src/feature/schedule/list/schedule_view.dart';
import 'package:all_school_info/src/home/home_view.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@CupertinoAutoRouter(
  replaceInRouteName: 'View',
  // ignore: always_specify_types
  routes: [
    // home with tabs
    AutoRoute<Object>(
      page: HomeView,
      path: '/',
      initial: true,
      children: <AutoRoute<Object>>[
        // announcements
        AutoRoute<Object>(path: 'announcements', initial: true, page: AnnouncementListView),

        // schedule
        AutoRoute<Object>(
          page: ScheduleView,
          path: 'schedule',
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
    AutoRoute<Object>(path: 'announcement/details/:id', page: AnnouncementDetailsView),
    AutoRoute<Object>(path: 'announcement/edit/:id', page: AnnouncementEditView),

    // TODO nested navigation
    AutoRoute<Object>(path: 'schedule/details', page: ScheduleDetailsView),

    RedirectRoute(path: '*', redirectTo: '/')
  ],
)
class $AppRouter {}
