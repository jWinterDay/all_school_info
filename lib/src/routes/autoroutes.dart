// import 'package:all_school_info/src/announcement/announcement_view.dart';
// import 'package:all_school_info/src/home/home_view.dart';
import 'package:all_school_info/src/feature/announcement/detail/announcement_detail_view.dart';
import 'package:all_school_info/src/feature/announcement/list/announcement_list_view.dart';
import 'package:all_school_info/src/feature/profile/profile_view.dart';
import 'package:all_school_info/src/home/home_view.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@CupertinoAutoRouter(
  replaceInRouteName: 'View',
  routes: <AutoRoute<Object>>[
    // home with tabs
    AutoRoute<Object>(page: HomeView, initial: true, children: <AutoRoute<Object>>[
      AutoRoute<Object>(page: AnnouncementListView),
      AutoRoute<Object>(page: ProfileView),
    ]),
    // announcement detail
    AutoRoute<Object>(page: AnnouncementDetailView),
  ],
)
class $AppRouter {}
