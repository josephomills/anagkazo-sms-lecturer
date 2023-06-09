import 'package:auto_route/auto_route.dart';
import 'package:lecturer/presentation/navigation/autoroute.gr.dart';
import 'package:lecturer/presentation/navigation/auth_gard.core.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = <AutoRoute>[
    AutoRoute(page: LoginRoute.page, path: "/login"),
    AutoRoute(
      page: IndexRoute.page,
      path: "/",
      initial: true,
      guards: [AuthGuard()],
      children: [
        AutoRoute(
          page: AttendanceRoute.page,
          meta: const {"title": "Attendance"},
          path: "attendance",
        ),
        AutoRoute(
          page: ProfileRoute.page,
          meta: const {"title": "Profile"},
          path: "profile",
        ),
      ],
    ),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: ForgotPasswordRoute.page),
    AutoRoute(page: PhoneVerificationRoute.page),
    AutoRoute(page: OtpRoute.page),
    AutoRoute(page: ScanRoute.page, guards: [AuthGuard()]),
    AutoRoute(page: ScanConfirmationRoute.page, guards: [AuthGuard()]),
  ];
}
