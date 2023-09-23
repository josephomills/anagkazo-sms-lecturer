import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lecturer/domain/auth/auth.facade.dart';
import 'package:lecturer/domain/auth/auth.failure.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final AuthFacade _authFacade;

  ForgotPasswordBloc(this._authFacade) : super(const ForgotPasswordState()) {
    on<ForgotPasswordEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        emailChanged: (e) => emit(
          state.copyWith(
            email: e.email,
            failureOrUnitOption: none(),
          ),
        ),
        sendLinkButtonPressed: (e) async {
          // Validate user input
          final passedValidation = e.formKey.currentState!.validate();

          if (passedValidation) {
            emit(state.copyWith(
              isLoading: true,
              failureOrUnitOption: none(),
            ));

            final failureOrUnit =
                await _authFacade.sendPasswordResetLink(email: state.email);

            emit(state.copyWith(
              isLoading: false,
              failureOrUnitOption: some(failureOrUnit),
            ));
          } else {
            // Failed validation
            emit(
              state.copyWith(
                isLoading: false,
                validateFields: true,
                failureOrUnitOption: none(),
              ),
            );
          }
        },
      );
    });
  }
}
