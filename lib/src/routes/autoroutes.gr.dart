// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../feature/announcement/details/announcement_details_view.dart' as _i2;
import '../feature/announcement/edit/announcement_edit_view.dart' as _i3;
import '../feature/announcement/list/announcement_list_view.dart' as _i6;
import '../feature/auth/auth_view.dart' as _i5;
import '../feature/profile/profile_view.dart' as _i8;
import '../feature/schedule/details/schedule_details_view.dart' as _i4;
import '../feature/schedule/list/schedule_view.dart' as _i7;
import '../home/home_view.dart' as _i1;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeViewRoute.name: (routeData) {
      return _i9.MaterialPageX<Object>(routeData: routeData, child: _i1.HomeView());
    },
    AnnouncementDetailsViewRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<AnnouncementDetailsViewRouteArgs>(
          orElse: () => AnnouncementDetailsViewRouteArgs(announcementModelId: pathParams.getString('id')));
      return _i9.CupertinoPageX<Object>(
          routeData: routeData,
          child: _i2.AnnouncementDetailsView(key: args.key, announcementModelId: args.announcementModelId));
    },
    AnnouncementEditViewRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<AnnouncementEditViewRouteArgs>(
          orElse: () => AnnouncementEditViewRouteArgs(
              announcementModelId: pathParams.optString('id'), cardViewMode: pathParams.getString('mode')));
      return _i9.CupertinoPageX<Object>(
          routeData: routeData,
          child: _i3.AnnouncementEditView(
              key: args.key, announcementModelId: args.announcementModelId, cardViewMode: args.cardViewMode));
    },
    ScheduleDetailsViewRoute.name: (routeData) {
      return _i9.CupertinoPageX<Object>(routeData: routeData, child: _i4.ScheduleDetailsView());
    },
    AuthViewRoute.name: (routeData) {
      return _i9.CupertinoPageX<Object>(routeData: routeData, child: const _i5.AuthView());
    },
    AnnouncementListViewRoute.name: (routeData) {
      return _i9.MaterialPageX<Object>(routeData: routeData, child: const _i6.AnnouncementListView());
    },
    ScheduleViewRoute.name: (routeData) {
      return _i9.MaterialPageX<Object>(routeData: routeData, child: _i7.ScheduleView());
    },
    ProfileViewRoute.name: (routeData) {
      return _i9.CustomPage<Object>(
          routeData: routeData, child: _i8.ProfileView(), opaque: true, barrierDismissible: false);
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig('/#redirect', path: '/', redirectTo: '/home', fullMatch: true),
        _i9.RouteConfig(HomeViewRoute.name, path: '/home', children: [
          _i9.RouteConfig('#redirect',
              path: '', parent: HomeViewRoute.name, redirectTo: 'announcements', fullMatch: true),
          _i9.RouteConfig(AnnouncementListViewRoute.name, path: 'announcements', parent: HomeViewRoute.name),
          _i9.RouteConfig(ScheduleViewRoute.name, path: 'schedule', parent: HomeViewRoute.name),
          _i9.RouteConfig(ProfileViewRoute.name, path: 'profile', parent: HomeViewRoute.name)
        ]),
        _i9.RouteConfig(AnnouncementDetailsViewRoute.name, path: 'announcement/details/:id'),
        _i9.RouteConfig(AnnouncementEditViewRoute.name, path: 'announcement/edit/:id&mode=:mode'),
        _i9.RouteConfig(ScheduleDetailsViewRoute.name, path: 'schedule/details'),
        _i9.RouteConfig(AuthViewRoute.name, path: 'auth'),
        _i9.RouteConfig('*#redirect', path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeViewRoute extends _i9.PageRouteInfo<void> {
  const HomeViewRoute({List<_i9.PageRouteInfo>? children})
      : super(HomeViewRoute.name, path: '/home', initialChildren: children);

  static const String name = 'HomeViewRoute';
}

/// generated route for
/// [_i2.AnnouncementDetailsView]
class AnnouncementDetailsViewRoute extends _i9.PageRouteInfo<AnnouncementDetailsViewRouteArgs> {
  AnnouncementDetailsViewRoute({_i10.Key? key, required String announcementModelId})
      : super(AnnouncementDetailsViewRoute.name,
            path: 'announcement/details/:id',
            args: AnnouncementDetailsViewRouteArgs(key: key, announcementModelId: announcementModelId),
            rawPathParams: {'id': announcementModelId});

  static const String name = 'AnnouncementDetailsViewRoute';
}

class AnnouncementDetailsViewRouteArgs {
  const AnnouncementDetailsViewRouteArgs({this.key, required this.announcementModelId});

  final _i10.Key? key;

  final String announcementModelId;

  @override
  String toString() {
    return 'AnnouncementDetailsViewRouteArgs{key: $key, announcementModelId: $announcementModelId}';
  }
}

/// generated route for
/// [_i3.AnnouncementEditView]
class AnnouncementEditViewRoute extends _i9.PageRouteInfo<AnnouncementEditViewRouteArgs> {
  AnnouncementEditViewRoute({_i10.Key? key, String? announcementModelId, required String cardViewMode})
      : super(AnnouncementEditViewRoute.name,
            path: 'announcement/edit/:id&mode=:mode',
            args: AnnouncementEditViewRouteArgs(
                key: key, announcementModelId: announcementModelId, cardViewMode: cardViewMode),
            rawPathParams: {'id': announcementModelId, 'mode': cardViewMode});

  static const String name = 'AnnouncementEditViewRoute';
}

class AnnouncementEditViewRouteArgs {
  const AnnouncementEditViewRouteArgs({this.key, this.announcementModelId, required this.cardViewMode});

  final _i10.Key? key;

  final String? announcementModelId;

  final String cardViewMode;

  @override
  String toString() {
    return 'AnnouncementEditViewRouteArgs{key: $key, announcementModelId: $announcementModelId, cardViewMode: $cardViewMode}';
  }
}

/// generated route for
/// [_i4.ScheduleDetailsView]
class ScheduleDetailsViewRoute extends _i9.PageRouteInfo<void> {
  const ScheduleDetailsViewRoute() : super(ScheduleDetailsViewRoute.name, path: 'schedule/details');

  static const String name = 'ScheduleDetailsViewRoute';
}

/// generated route for
/// [_i5.AuthView]
class AuthViewRoute extends _i9.PageRouteInfo<void> {
  const AuthViewRoute() : super(AuthViewRoute.name, path: 'auth');

  static const String name = 'AuthViewRoute';
}

/// generated route for
/// [_i6.AnnouncementListView]
class AnnouncementListViewRoute extends _i9.PageRouteInfo<void> {
  const AnnouncementListViewRoute() : super(AnnouncementListViewRoute.name, path: 'announcements');

  static const String name = 'AnnouncementListViewRoute';
}

/// generated route for
/// [_i7.ScheduleView]
class ScheduleViewRoute extends _i9.PageRouteInfo<void> {
  const ScheduleViewRoute() : super(ScheduleViewRoute.name, path: 'schedule');

  static const String name = 'ScheduleViewRoute';
}

/// generated route for
/// [_i8.ProfileView]
class ProfileViewRoute extends _i9.PageRouteInfo<void> {
  const ProfileViewRoute() : super(ProfileViewRoute.name, path: 'profile');

  static const String name = 'ProfileViewRoute';
}
