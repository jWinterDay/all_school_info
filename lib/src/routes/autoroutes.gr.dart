// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i2;

import '../feature/announcement/detail/announcement_detail_view.dart' as _i4;
import '../feature/announcement/list/announcement_list_view.dart' as _i5;
import '../feature/profile/profile_view.dart' as _i6;
import '../feature/schedule/schedule_view.dart' as _i7;
import '../home/home_view.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeViewRoute.name: (routeData) => _i1.CupertinoPageX<Object>(
        routeData: routeData,
        builder: (_) {
          return _i3.HomeView();
        }),
    AnnouncementDetailViewRoute.name: (routeData) => _i1.CupertinoPageX<Object>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<AnnouncementDetailViewRouteArgs>(
              orElse: () => AnnouncementDetailViewRouteArgs(announcementModelId: pathParams.getString('id')));
          return _i4.AnnouncementDetailView(key: args.key, announcementModelId: args.announcementModelId);
        }),
    AnnouncementListViewRoute.name: (routeData) => _i1.CupertinoPageX<Object>(
        routeData: routeData,
        builder: (_) {
          return const _i5.AnnouncementListView();
        }),
    ProfileViewRoute.name: (routeData) => _i1.CupertinoPageX<Object>(
        routeData: routeData,
        builder: (_) {
          return _i6.ProfileView();
        }),
    ScheduleViewRoute.name: (routeData) => _i1.CupertinoPageX<Object>(
        routeData: routeData,
        builder: (_) {
          return _i7.ScheduleView();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeViewRoute.name, path: '/', children: [
          _i1.RouteConfig(AnnouncementListViewRoute.name, path: 'announcement-list-view'),
          _i1.RouteConfig(ProfileViewRoute.name, path: 'profile-view'),
          _i1.RouteConfig(ScheduleViewRoute.name, path: 'schedule-view')
        ]),
        _i1.RouteConfig(AnnouncementDetailViewRoute.name, path: '/announcement_detail_view/:id'),
        _i1.RouteConfig('*#redirect', path: '*', redirectTo: '/', fullMatch: true)
      ];
}

class HomeViewRoute extends _i1.PageRouteInfo {
  const HomeViewRoute({List<_i1.PageRouteInfo>? children}) : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeViewRoute';
}

class AnnouncementDetailViewRoute extends _i1.PageRouteInfo<AnnouncementDetailViewRouteArgs> {
  AnnouncementDetailViewRoute({_i8.Key? key, required String announcementModelId})
      : super(name,
            path: '/announcement_detail_view/:id',
            args: AnnouncementDetailViewRouteArgs(key: key, announcementModelId: announcementModelId),
            rawPathParams: {'id': announcementModelId});

  static const String name = 'AnnouncementDetailViewRoute';
}

class AnnouncementDetailViewRouteArgs {
  const AnnouncementDetailViewRouteArgs({this.key, required this.announcementModelId});

  final _i8.Key? key;

  final String announcementModelId;
}

class AnnouncementListViewRoute extends _i1.PageRouteInfo {
  const AnnouncementListViewRoute() : super(name, path: 'announcement-list-view');

  static const String name = 'AnnouncementListViewRoute';
}

class ProfileViewRoute extends _i1.PageRouteInfo {
  const ProfileViewRoute() : super(name, path: 'profile-view');

  static const String name = 'ProfileViewRoute';
}

class ScheduleViewRoute extends _i1.PageRouteInfo {
  const ScheduleViewRoute() : super(name, path: 'schedule-view');

  static const String name = 'ScheduleViewRoute';
}
