// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:lecturer/application/attendance/attendance/attendance_bloc.dart'
    as _i8;
import 'package:lecturer/presentation/pages/attendance/attendance.page.dart'
    as _i1;
import 'package:lecturer/presentation/pages/attendance/scan.page.dart' as _i5;
import 'package:lecturer/presentation/pages/auth/login.page.dart' as _i3;
import 'package:lecturer/presentation/pages/index.page.dart' as _i2;
import 'package:lecturer/presentation/pages/profile/profile.page.dart' as _i4;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AttendanceRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.WrappedRoute(child: const _i1.AttendancePage()),
      );
    },
    IndexRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.IndexPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.WrappedRoute(child: _i3.LoginPage(key: args.key)),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.WrappedRoute(child: _i4.ProfilePage(key: args.key)),
      );
    },
    ScanRoute.name: (routeData) {
      final args = routeData.argsAs<ScanRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.WrappedRoute(
            child: _i5.ScanPage(
          key: args.key,
          attendanceBloc: args.attendanceBloc,
        )),
      );
    },
  };
}

/// generated route for
/// [_i1.AttendancePage]
class AttendanceRoute extends _i6.PageRouteInfo<void> {
  const AttendanceRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AttendanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'AttendanceRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.IndexPage]
class IndexRoute extends _i6.PageRouteInfo<void> {
  const IndexRoute({List<_i6.PageRouteInfo>? children})
      : super(
          IndexRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndexRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<LoginRouteArgs> page =
      _i6.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i6.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i6.PageInfo<ProfileRouteArgs> page =
      _i6.PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.ScanPage]
class ScanRoute extends _i6.PageRouteInfo<ScanRouteArgs> {
  ScanRoute({
    _i7.Key? key,
    required _i8.AttendanceBloc attendanceBloc,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          ScanRoute.name,
          args: ScanRouteArgs(
            key: key,
            attendanceBloc: attendanceBloc,
          ),
          initialChildren: children,
        );

  static const String name = 'ScanRoute';

  static const _i6.PageInfo<ScanRouteArgs> page =
      _i6.PageInfo<ScanRouteArgs>(name);
}

class ScanRouteArgs {
  const ScanRouteArgs({
    this.key,
    required this.attendanceBloc,
  });

  final _i7.Key? key;

  final _i8.AttendanceBloc attendanceBloc;

  @override
  String toString() {
    return 'ScanRouteArgs{key: $key, attendanceBloc: $attendanceBloc}';
  }
}
