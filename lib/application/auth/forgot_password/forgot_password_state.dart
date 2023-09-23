part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default("") String email,
    @Default(false) bool isLoading,
    @Default(false) bool validateFields,
    @Default(None()) Option<Either<AuthFailure, Unit>> failureOrUnitOption,
  }) = _ForgotPasswordState;
}
