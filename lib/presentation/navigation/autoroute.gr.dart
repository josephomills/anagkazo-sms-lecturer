// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:lecturer/application/attendance/attendance/attendance_bloc.dart'
    as _i13;
import 'package:lecturer/presentation/pages/attendance/attendance.page.dart'
    as _i2;
import 'package:lecturer/presentation/pages/attendance/scan.page.dart' as _i1;
import 'package:lecturer/presentation/pages/attendance/scan_confirmation.page.dart'
    as _i3;
import 'package:lecturer/presentation/pages/auth/forgot_password.page.dart'
    as _i6;
import 'package:lecturer/presentation/pages/auth/login.page.dart' as _i5;
import 'package:lecturer/presentation/pages/auth/otp.page.dart' as _i4;
import 'package:lecturer/presentation/pages/auth/phone.page.dart' as _i9;
import 'package:lecturer/presentation/pages/auth/register.page.dart' as _i8;
import 'package:lecturer/presentation/pages/index.page.dart' as _i10;
import 'package:lecturer/presentation/pages/profile/profile.page.dart' as _i7;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    ScanRoute.name: (routeData) {
      final args = routeData.argsAs<ScanRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(
            child: _i1.ScanPage(
          key: args.key,
          attendanceBloc: args.attendanceBloc,
        )),
      );
    },
    AttendanceRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: const _i2.AttendancePage()),
      );
    },
    ScanConfirmationRoute.name: (routeData) {
      final args = routeData.argsAs<ScanConfirmationRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.ScanConfirmationPage(
          key: args.key,
          details: args.details,
        ),
      );
    },
    OtpRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.OtpPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: _i5.LoginPage(key: args.key)),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ForgotPasswordPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: _i7.ProfilePage(key: args.key)),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.RegisterPage(),
      );
    },
    PhoneVerificationRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PhoneVerificationPage(),
      );
    },
    IndexRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.IndexPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ScanPage]
class ScanRoute extends _i11.PageRouteInfo<ScanRouteArgs> {
  ScanRoute({
    _i12.Key? key,
    required _i13.AttendanceBloc attendanceBloc,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          ScanRoute.name,
          args: ScanRouteArgs(
            key: key,
            attendanceBloc: attendanceBloc,
          ),
          initialChildren: children,
        );

  static const String name = 'ScanRoute';

  static const _i11.PageInfo<ScanRouteArgs> page =
      _i11.PageInfo<ScanRouteArgs>(name);
}

class ScanRouteArgs {
  const ScanRouteArgs({
    this.key,
    required this.attendanceBloc,
  });

  final _i12.Key? key;

  final _i13.AttendanceBloc attendanceBloc;

  @override
  String toString() {
    return 'ScanRouteArgs{key: $key, attendanceBloc: $attendanceBloc}';
  }
}

/// generated route for
/// [_i2.AttendancePage]
class AttendanceRoute extends _i11.PageRouteInfo<void> {
  const AttendanceRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AttendanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'AttendanceRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ScanConfirmationPage]
class ScanConfirmationRoute
    extends _i11.PageRouteInfo<ScanConfirmationRouteArgs> {
  ScanConfirmationRoute({
    _i12.Key? key,
    required Map<String, dynamic> details,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          ScanConfirmationRoute.name,
          args: ScanConfirmationRouteArgs(
            key: key,
            details: details,
          ),
          initialChildren: children,
        );

  static const String name = 'ScanConfirmationRoute';

  static const _i11.PageInfo<ScanConfirmationRouteArgs> page =
      _i11.PageInfo<ScanConfirmationRouteArgs>(name);
}

class ScanConfirmationRouteArgs {
  const ScanConfirmationRouteArgs({
    this.key,
    required this.details,
  });

  final _i12.Key? key;

  final Map<String, dynamic> details;

  @override
  String toString() {
    return 'ScanConfirmationRouteArgs{key: $key, details: $details}';
  }
}

/// generated route for
/// [_i4.OtpPage]
class OtpRoute extends _i11.PageRouteInfo<void> {
  const OtpRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i11.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i12.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i11.PageInfo<LoginRouteArgs> page =
      _i11.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.ForgotPasswordPage]
class ForgotPasswordRoute extends _i11.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i11.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i12.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i11.PageInfo<ProfileRouteArgs> page =
      _i11.PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.RegisterPage]
class RegisterRoute extends _i11.PageRouteInfo<void> {
  const RegisterRoute({List<_i11.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PhoneVerificationPage]
class PhoneVerificationRoute extends _i11.PageRouteInfo<void> {
  const PhoneVerificationRoute({List<_i11.PageRouteInfo>? children})
      : super(
          PhoneVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneVerificationRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.IndexPage]
class IndexRoute extends _i11.PageRouteInfo<void> {
  const IndexRoute({List<_i11.PageRouteInfo>? children})
      : super(
          IndexRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndexRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
