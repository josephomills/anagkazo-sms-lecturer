part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.emailChanged({required String email}) =
      EmailChanged;
  const factory ForgotPasswordEvent.sendLinkButtonPressed(
      {required GlobalKey<FormState> formKey}) = SendLinkButtonPressed;
}
