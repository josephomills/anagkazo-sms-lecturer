import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:lecturer/application/auth/auth/auth_bloc.dart';
import 'package:lecturer/domain/auth/auth.facade.dart';
import 'package:lecturer/domain/auth/auth.failure.dart';
import 'package:lecturer/domain/core/config/injectable.core.dart';
import 'package:lecturer/infrastructure/auth/dto/login.dto.dart';
import 'package:lecturer/infrastructure/auth/dto/register.dto.dart';
import 'package:lecturer/infrastructure/auth/models/user.model.dart';

@Injectable(as: AuthFacade)
class AuthRepo implements AuthFacade {
  @override
  Future<Either<AuthFailure, ParseUser>> getCurrentUser() async {
    // Get current user from storage
    final user = await ParseUser.currentUser() as ParseUser?;
    if (user != null) {
      return Right(user);
    } else {
      // No signed in user
      return const Left(AuthFailure.userDoesNotExist());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> logout() async {
    // Get current user from storage
    final resp = await getIt<ParseUser>().logout();
    if (resp.success) {
      getIt.unregister<ParseUser>();
      return const Right(unit);
    } else {
      return const Left(AuthFailure.serverError(
        message:
            "Something went wrong. Could not logout. Please try again later.",
      ));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithUsernameAndPassword(
      {required RegisterDTO registerDTO}) async {
    final user = ParseUser.createUser(
      registerDTO.username,
      registerDTO.password,
      registerDTO.email,
    );
    final response = await user.signUp(allowWithoutEmail: true);
    if (response.success) {
      // successful sign up
      return const Right(unit);
    } else {
      // Check error and return corresponding AuthFailure
      switch (response.error!.code) {
        case 202:
          return const Left(AuthFailure.usernameAlreadyInUse());
        case 203:
          return const Left(AuthFailure.emailAlreadyInUse());
        default:
          return Left(
              AuthFailure.serverError(message: response.error!.message));
      }
    }
  }

  @override
  Future<Either<AuthFailure, ParseUser>> loginWithUsernameAndPassword(
      {required LoginDTO loginDTO}) async {
    final user = ParseUser(
      loginDTO.username,
      loginDTO.password,
      loginDTO.email,
    );

    final response = await user.login();

    if (response.success) {
      // get current user
      return (await getCurrentUser()).fold(
        (l) => Left(l),
        (r) => Right(r),
      );
    } else {
      // Check error and return corresponding AuthFailure
      switch (response.error!.code) {
        case 101:
          return const Left(
              AuthFailure.invalidUsernameAndPasswordCombination());
        case 206:
          return const Left(AuthFailure.sessionMissing());
        case 209:
          return const Left(AuthFailure.invalidSessionToken());
        default:
          return Left(
              AuthFailure.serverError(message: response.error!.message));
      }
    }
  }

  @override
  Future<Either<AuthFailure, ParseUser>> updateUser(
      {required UserModel userData}) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<bool> hasUserLoggedIn() async {
    bool hasUserLoggedIn = false;

    if (getIt.isRegistered<ParseUser>()) {
      hasUserLoggedIn = true;
    } else {
      // Get current user from storage
      final user = await ParseUser.currentUser();

      if (user != null) {
        await user.fetch();
        // session token is valid
        hasUserLoggedIn = true;
        // Register user with [getIt]
        getIt.registerSingleton<ParseUser>(user);
        // set current user in [AuthBloc]
        getIt<AuthBloc>().add(LoggedIn(user: user));
      }
    }

    return hasUserLoggedIn;
  }

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetLink(
      {required String email}) async {
    final user = ParseUser(null, null, email);
    final parseResponse = await user.requestPasswordReset();
    if (parseResponse.success) {
      return const Right(unit);
    } else {
      return Left(
        AuthFailure.serverError(
            message: parseResponse.error?.message ??
                "Error: Password reset link not sent."),
      );
    }
  }
}
