import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:lecturer/presentation/navigation/autoroute.gr.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      actions: [
        SignedOutAction((context) {
          final router = AutoRouter.of(context);
          router.replaceAll([LoginRoute()]);
        }),
        VerifyPhoneAction(
          (context, action) =>
              AutoRouter.of(context).push(const PhoneVerificationRoute()),
        ),
      ],
    );
  }
}
