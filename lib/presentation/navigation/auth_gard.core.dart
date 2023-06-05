import 'package:auto_route/auto_route.dart';
import 'package:lecturer/domain/auth/auth.facade.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:lecturer/domain/core/config/injectable.core.dart';
import 'package:lecturer/presentation/navigation/autoroute.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    // final isLoggedIn = FirebaseAuth.instance.currentUser != null;
    final isLoggedIn = await getIt<AuthFacade>().hasUserLoggedIn();

    // Remove splash
    FlutterNativeSplash.remove();

    if (isLoggedIn) {
      resolver.next();
    } else {
      router.replaceAll([LoginRoute()]);
    }
  }
}
