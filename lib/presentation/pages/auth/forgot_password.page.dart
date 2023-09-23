import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lecturer/application/auth/auth/auth_bloc.dart';
import 'package:lecturer/application/auth/forgot_password/forgot_password_bloc.dart';
import 'package:lecturer/domain/core/config/injectable.core.dart';
import 'package:lecturer/domain/core/util/util.dart';
import 'package:lecturer/domain/core/util/validator.dart';
import 'package:lecturer/presentation/widgets/button.widget.dart';
import 'package:lecturer/presentation/widgets/snackbar.widget.dart';
import 'package:lecturer/presentation/widgets/text_form_field.widget.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

@RoutePage()
class ForgotPasswordPage extends StatelessWidget implements AutoRouteWrapper {
  ForgotPasswordPage({super.key});

  final _formKey = getIt<GlobalKey<FormState>>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () => unfocus(context),
          child: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
            listener: (context, state) {
              state.failureOrUnitOption.fold(
                  () {}, // do nothing for none()
                  (either) => either.fold((f) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          snackBarWidget(
                            context: context,
                            type: SnackBarType.error,
                            text: f.maybeMap(
                              serverError: (e) => e.message!,
                              orElse: () =>
                                  "Something went wrong. Please try again.",
                            ),
                          ),
                        );
                      }, (unit) {
                        // Go back
                        context.router.pop();
                        ScaffoldMessenger.of(context).showSnackBar(
                          snackBarWidget(
                            text: "Password reset instructions sent to email!",
                            context: context,
                          ),
                        );
                      }));
            },
            builder: (context, state) {
              return Form(
                key: _formKey,
                autovalidateMode: state.validateFields
                    ? AutovalidateMode.onUserInteraction
                    : AutovalidateMode.disabled,
                child: ListView(
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  children: [
                    const SizedBox(height: 80),
                    Image.asset(
                      "assets/icon/logo.png",
                      height: 160,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Forgot Password",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 60),
                    TextFormFieldWidget(
                      text: state.email,
                      label: "Email",
                      validator: getIt<Validator>().validateEmail,
                      onChanged: (text) => context
                          .read<ForgotPasswordBloc>()
                          .add(EmailChanged(email: text)),
                      suffixIcon: const Icon(LineAwesomeIcons.at),
                      hint: "What is your email?",
                    ),
                    const SizedBox(height: 40),
                    ButtonWidget(
                      onTap: () {
                        unfocus(context);
                        BlocProvider.of<ForgotPasswordBloc>(context)
                            .add(SendLinkButtonPressed(formKey: _formKey));
                      },
                      isLoading: state.isLoading,
                      label: "Send Password Reset Link",
                      widthFactor: 0.8,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
      create: (context) => getIt<ForgotPasswordBloc>(),
      child: this,
    );
  }
}
