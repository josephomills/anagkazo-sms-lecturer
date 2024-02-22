import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lecturer/application/auth/register/register_bloc.dart';
import 'package:lecturer/domain/core/config/injectable.core.dart';
import 'package:lecturer/domain/core/util/util.dart';
import 'package:lecturer/domain/core/util/validator.dart';
import 'package:lecturer/presentation/widgets/button.widget.dart';
import 'package:lecturer/presentation/widgets/snackbar.widget.dart';
import 'package:lecturer/presentation/widgets/text_form_field.widget.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

@RoutePage()
class RegisterPage extends StatelessWidget implements AutoRouteWrapper {
  RegisterPage({super.key});

  final _formKey = getIt<GlobalKey<FormState>>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () => unfocus(context),
          child: BlocConsumer<RegisterBloc, RegisterState>(
            listener: (context, state) {
              state.authFailureOrUnitOption.fold(
                  () {}, // do nothing for none()
                  (either) => either.fold((f) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          f.maybeMap(
                            serverError: (e) => e.message!,
                            invalidUsernameAndPasswordCombination: (e) =>
                                "Please enter a valid username & password combination.",
                            sessionMissing: (e) => "Session missing",
                            orElse: () =>
                                "Something went wrong. Please try again.",
                          ),
                        )));
                      }, (user) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(snackBarWidget(
                          context: context,
                          text:
                              "New account successfully registered! Login to continue.",
                        ));
                        // Return to login page. Don't sign in automatically.
                        context.router.pop();
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
                    const SizedBox(height: 150),
                    Text(
                      "Register",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const SizedBox(height: 64),
                    TextFormFieldWidget(
                      text: state.firstname,
                      label: "First name",
                      validator: getIt<Validator>().validateName,
                      onChanged: (text) => context
                          .read<RegisterBloc>()
                          .add(FirstnameChanged(firstname: text)),
                      suffixIcon: const Icon(LineAwesomeIcons.at),
                      hint: "What is your first name",
                    ),
                    const SizedBox(height: 16),
                    TextFormFieldWidget(
                      text: state.lastname,
                      label: "Last name",
                      validator: getIt<Validator>().validateName,
                      onChanged: (text) => context
                          .read<RegisterBloc>()
                          .add(LastnameChanged(lastname: text)),
                      suffixIcon: const Icon(LineAwesomeIcons.at),
                      hint: "What is your last name",
                    ),
                    const SizedBox(height: 16),
                    TextFormFieldWidget(
                      text: state.email,
                      label: "Email",
                      validator: getIt<Validator>().validateEmail,
                      onChanged: (text) => context
                          .read<RegisterBloc>()
                          .add(EmailChanged(email: text)),
                      suffixIcon: const Icon(LineAwesomeIcons.at),
                      hint: "What is your email?",
                    ),
                    const SizedBox(height: 16),
                    TextFormFieldWidget(
                      text: state.password,
                      label: "Password",
                      validator: getIt<Validator>().validatePassword,
                      onChanged: (text) => context
                          .read<RegisterBloc>()
                          .add(PasswordChanged(password: text)),
                      suffixIcon: const Icon(LineAwesomeIcons.lock),
                      hint: "Enter your new password",
                      obscureText: true,
                    ),
                    const SizedBox(height: 30),
                    ButtonWidget(
                      onTap: () {
                        unfocus(context);
                        BlocProvider.of<RegisterBloc>(context)
                            .add(RegisterButtonPressed(formKey: _formKey));
                      },
                      isLoading: state.isLoading,
                      label: "Create a new account",
                      widthFactor: 0.8,
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "OR",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    ButtonWidget(
                      onTap: () {
                        unfocus(context);
                        context.router.pop();
                      },
                      isLoading: state.isLoading,
                      label: "Back to Login",
                      widthFactor: 0.8,
                      backgroundColor: Theme.of(context).colorScheme.tertiary,
                      textColor: Theme.of(context).colorScheme.onTertiary,
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
    return BlocProvider<RegisterBloc>(
      create: (context) => getIt<RegisterBloc>(),
      child: this,
    );
  }
}
