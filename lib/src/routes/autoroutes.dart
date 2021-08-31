// import 'package:all_school_info/src/announcement/announcement_view.dart';
// import 'package:all_school_info/src/home/home_view.dart';
import 'package:all_school_info/src/feature/announcement/detail/announcement_detail_view.dart';
import 'package:all_school_info/src/feature/announcement/list/announcement_list_view.dart';
import 'package:all_school_info/src/feature/profile/profile_view.dart';
import 'package:all_school_info/src/feature/schedule/schedule_view.dart';
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
    AutoRoute<Object>(page: HomeView, initial: true, children: <AutoRoute<Object>>[
      AutoRoute<Object>(page: AnnouncementListView),
      AutoRoute<Object>(page: ProfileView),
      AutoRoute<Object>(page: ScheduleView),
    ]),
    // announcement detail
    AutoRoute<Object>(path: '/announcement_detail_view/:id', page: AnnouncementDetailView),

    RedirectRoute(path: '*', redirectTo: '/')
  ],
)
class $AppRouter {}
