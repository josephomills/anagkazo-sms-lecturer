part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.firstnameChanged({required String firstname}) =
      FirstnameChanged;
  const factory RegisterEvent.lastnameChanged({required String lastname}) =
      LastnameChanged;
  const factory RegisterEvent.emailChanged({required String email}) =
      EmailChanged;
  const factory RegisterEvent.passwordChanged({required String password}) =
      PasswordChanged;
  const factory RegisterEvent.registerButtonPressed(
      {required GlobalKey<FormState> formKey}) = RegisterButtonPressed;
}
