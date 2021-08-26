// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:domain/domain.dart' as _i7;
import 'package:flutter/material.dart' as _i2;

import '../feature/announcement/detail/announcement_detail_view.dart' as _i4;
import '../feature/announcement/list/announcement_list_view.dart' as _i5;
import '../feature/profile/profile_view.dart' as _i6;
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
          final args = data.argsAs<AnnouncementDetailViewRouteArgs>();
          return _i4.AnnouncementDetailView(key: args.key, announcementModel: args.announcementModel);
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
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeViewRoute.name, path: '/', children: [
          _i1.RouteConfig(AnnouncementListViewRoute.name, path: 'announcement-list-view'),
          _i1.RouteConfig(ProfileViewRoute.name, path: 'profile-view')
        ]),
        _i1.RouteConfig(AnnouncementDetailViewRoute.name, path: '/announcement-detail-view')
      ];
}

class HomeViewRoute extends _i1.PageRouteInfo {
  const HomeViewRoute({List<_i1.PageRouteInfo>? children}) : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeViewRoute';
}

class AnnouncementDetailViewRoute extends _i1.PageRouteInfo<AnnouncementDetailViewRouteArgs> {
  AnnouncementDetailViewRoute({_i2.Key? key, required _i7.AnnouncementModel announcementModel})
      : super(name,
            path: '/announcement-detail-view',
            args: AnnouncementDetailViewRouteArgs(key: key, announcementModel: announcementModel));

  static const String name = 'AnnouncementDetailViewRoute';
}

class AnnouncementDetailViewRouteArgs {
  const AnnouncementDetailViewRouteArgs({this.key, required this.announcementModel});

  final _i2.Key? key;

  final _i7.AnnouncementModel announcementModel;
}

class AnnouncementListViewRoute extends _i1.PageRouteInfo {
  const AnnouncementListViewRoute() : super(name, path: 'announcement-list-view');

  static const String name = 'AnnouncementListViewRoute';
}

class ProfileViewRoute extends _i1.PageRouteInfo {
  const ProfileViewRoute() : super(name, path: 'profile-view');

  static const String name = 'ProfileViewRoute';
}
