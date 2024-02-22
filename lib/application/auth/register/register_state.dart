part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default("") String firstname,
    @Default("") String lastname,
    @Default("") String email,
    @Default("") String password,
    @Default(false) bool isLoading,
    @Default(false) bool validateFields,
    @Default(None()) Option<Either<AuthFailure, Unit>> authFailureOrUnitOption,
  }) = _RegisterState;
}
