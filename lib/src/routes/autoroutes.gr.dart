// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i11;
import 'package:flutter/material.dart' as _i2;

import '../feature/announcement/details/announcement_details_view.dart' as _i4;
import '../feature/announcement/edit/announcement_edit_view.dart' as _i5;
import '../feature/announcement/list/announcement_list_view.dart' as _i8;
import '../feature/auth/auth_view.dart' as _i7;
import '../feature/profile/profile_view.dart' as _i10;
import '../feature/schedule/details/schedule_details_view.dart' as _i6;
import '../feature/schedule/list/schedule_view.dart' as _i9;
import '../home/home_view.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeViewRoute.name: (routeData) => _i1.MaterialPageX<Object>(
        routeData: routeData,
        builder: (_) {
          return _i3.HomeView();
        }),
    AnnouncementDetailsViewRoute.name: (routeData) => _i1.CupertinoPageX<Object>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<AnnouncementDetailsViewRouteArgs>(
              orElse: () => AnnouncementDetailsViewRouteArgs(announcementModelId: pathParams.getString('id')));
          return _i4.AnnouncementDetailsView(key: args.key, announcementModelId: args.announcementModelId);
        }),
    AnnouncementEditViewRoute.name: (routeData) => _i1.CupertinoPageX<Object>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<AnnouncementEditViewRouteArgs>(
              orElse: () => AnnouncementEditViewRouteArgs(
                  announcementModelId: pathParams.optString('id'), cardViewMode: pathParams.getString('mode')));
          return _i5.AnnouncementEditView(
              key: args.key, announcementModelId: args.announcementModelId, cardViewMode: args.cardViewMode);
        }),
    ScheduleDetailsViewRoute.name: (routeData) => _i1.CupertinoPageX<Object>(
        routeData: routeData,
        builder: (_) {
          return _i6.ScheduleDetailsView();
        }),
    AuthViewRoute.name: (routeData) => _i1.CupertinoPageX<Object>(
        routeData: routeData,
        builder: (_) {
          return const _i7.AuthView();
        }),
    AnnouncementListViewRoute.name: (routeData) => _i1.MaterialPageX<Object>(
        routeData: routeData,
        builder: (_) {
          return const _i8.AnnouncementListView();
        }),
    ScheduleViewRoute.name: (routeData) => _i1.MaterialPageX<Object>(
        routeData: routeData,
        builder: (_) {
          return _i9.ScheduleView();
        }),
    ProfileViewRoute.name: (routeData) => _i1.CustomPage<Object>(
        routeData: routeData,
        builder: (_) {
          return _i10.ProfileView();
        },
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect', path: '/', redirectTo: '/home', fullMatch: true),
        _i1.RouteConfig(HomeViewRoute.name, path: '/home', children: [
          _i1.RouteConfig('#redirect', path: '', redirectTo: 'announcements', fullMatch: true),
          _i1.RouteConfig(AnnouncementListViewRoute.name, path: 'announcements'),
          _i1.RouteConfig(ScheduleViewRoute.name, path: 'schedule'),
          _i1.RouteConfig(ProfileViewRoute.name, path: 'profile')
        ]),
        _i1.RouteConfig(AnnouncementDetailsViewRoute.name, path: 'announcement/details/:id'),
        _i1.RouteConfig(AnnouncementEditViewRoute.name, path: 'announcement/edit/:id&mode=:mode'),
        _i1.RouteConfig(ScheduleDetailsViewRoute.name, path: 'schedule/details'),
        _i1.RouteConfig(AuthViewRoute.name, path: 'auth'),
        _i1.RouteConfig('*#redirect', path: '*', redirectTo: '/', fullMatch: true)
      ];
}

class HomeViewRoute extends _i1.PageRouteInfo {
  const HomeViewRoute({List<_i1.PageRouteInfo>? children}) : super(name, path: '/home', initialChildren: children);

  static const String name = 'HomeViewRoute';
}

class AnnouncementDetailsViewRoute extends _i1.PageRouteInfo<AnnouncementDetailsViewRouteArgs> {
  AnnouncementDetailsViewRoute({_i11.Key? key, required String announcementModelId})
      : super(name,
            path: 'announcement/details/:id',
            args: AnnouncementDetailsViewRouteArgs(key: key, announcementModelId: announcementModelId),
            rawPathParams: {'id': announcementModelId});

  static const String name = 'AnnouncementDetailsViewRoute';
}

class AnnouncementDetailsViewRouteArgs {
  const AnnouncementDetailsViewRouteArgs({this.key, required this.announcementModelId});

  final _i11.Key? key;

  final String announcementModelId;
}

class AnnouncementEditViewRoute extends _i1.PageRouteInfo<AnnouncementEditViewRouteArgs> {
  AnnouncementEditViewRoute({_i11.Key? key, String? announcementModelId, required String cardViewMode})
      : super(name,
            path: 'announcement/edit/:id&mode=:mode',
            args: AnnouncementEditViewRouteArgs(
                key: key, announcementModelId: announcementModelId, cardViewMode: cardViewMode),
            rawPathParams: {'id': announcementModelId, 'mode': cardViewMode});

  static const String name = 'AnnouncementEditViewRoute';
}

class AnnouncementEditViewRouteArgs {
  const AnnouncementEditViewRouteArgs({this.key, this.announcementModelId, required this.cardViewMode});

  final _i11.Key? key;

  final String? announcementModelId;

  final String cardViewMode;
}

class ScheduleDetailsViewRoute extends _i1.PageRouteInfo {
  const ScheduleDetailsViewRoute() : super(name, path: 'schedule/details');

  static const String name = 'ScheduleDetailsViewRoute';
}

class AuthViewRoute extends _i1.PageRouteInfo {
  const AuthViewRoute() : super(name, path: 'auth');

  static const String name = 'AuthViewRoute';
}

class AnnouncementListViewRoute extends _i1.PageRouteInfo {
  const AnnouncementListViewRoute() : super(name, path: 'announcements');

  static const String name = 'AnnouncementListViewRoute';
}

class ScheduleViewRoute extends _i1.PageRouteInfo {
  const ScheduleViewRoute() : super(name, path: 'schedule');

  static const String name = 'ScheduleViewRoute';
}

class ProfileViewRoute extends _i1.PageRouteInfo {
  const ProfileViewRoute() : super(name, path: 'profile');

  static const String name = 'ProfileViewRoute';
}
