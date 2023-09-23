// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:lecturer/application/attendance/attendance/attendance_bloc.dart'
    as _i9;
import 'package:lecturer/presentation/pages/attendance/attendance.page.dart'
    as _i1;
import 'package:lecturer/presentation/pages/attendance/scan.page.dart' as _i6;
import 'package:lecturer/presentation/pages/auth/forgot_password.page.dart'
    as _i2;
import 'package:lecturer/presentation/pages/auth/login.page.dart' as _i4;
import 'package:lecturer/presentation/pages/index.page.dart' as _i3;
import 'package:lecturer/presentation/pages/profile/profile.page.dart' as _i5;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AttendanceRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.WrappedRoute(child: const _i1.AttendancePage()),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ForgotPasswordRouteArgs>(
          orElse: () => const ForgotPasswordRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.WrappedRoute(child: _i2.ForgotPasswordPage(key: args.key)),
      );
    },
    IndexRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.IndexPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.WrappedRoute(child: _i4.LoginPage(key: args.key)),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.WrappedRoute(child: _i5.ProfilePage(key: args.key)),
      );
    },
    ScanRoute.name: (routeData) {
      final args = routeData.argsAs<ScanRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.WrappedRoute(
            child: _i6.ScanPage(
          key: args.key,
          attendanceBloc: args.attendanceBloc,
        )),
      );
    },
  };
}

/// generated route for
/// [_i1.AttendancePage]
class AttendanceRoute extends _i7.PageRouteInfo<void> {
  const AttendanceRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AttendanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'AttendanceRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ForgotPasswordPage]
class ForgotPasswordRoute extends _i7.PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          ForgotPasswordRoute.name,
          args: ForgotPasswordRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i7.PageInfo<ForgotPasswordRouteArgs> page =
      _i7.PageInfo<ForgotPasswordRouteArgs>(name);
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'ForgotPasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.IndexPage]
class IndexRoute extends _i7.PageRouteInfo<void> {
  const IndexRoute({List<_i7.PageRouteInfo>? children})
      : super(
          IndexRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndexRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<LoginRouteArgs> page =
      _i7.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i7.PageInfo<ProfileRouteArgs> page =
      _i7.PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.ScanPage]
class ScanRoute extends _i7.PageRouteInfo<ScanRouteArgs> {
  ScanRoute({
    _i8.Key? key,
    required _i9.AttendanceBloc attendanceBloc,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          ScanRoute.name,
          args: ScanRouteArgs(
            key: key,
            attendanceBloc: attendanceBloc,
          ),
          initialChildren: children,
        );

  static const String name = 'ScanRoute';

  static const _i7.PageInfo<ScanRouteArgs> page =
      _i7.PageInfo<ScanRouteArgs>(name);
}

class ScanRouteArgs {
  const ScanRouteArgs({
    this.key,
    required this.attendanceBloc,
  });

  final _i8.Key? key;

  final _i9.AttendanceBloc attendanceBloc;

  @override
  String toString() {
    return 'ScanRouteArgs{key: $key, attendanceBloc: $attendanceBloc}';
  }
}
