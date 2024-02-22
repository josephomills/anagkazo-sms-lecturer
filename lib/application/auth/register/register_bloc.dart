import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lecturer/domain/auth/auth.facade.dart';
import 'package:lecturer/domain/auth/auth.failure.dart';
import 'package:lecturer/infrastructure/auth/dto/register.dto.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthFacade _authFacade;

  RegisterBloc(this._authFacade) : super(const RegisterState()) {
    on<RegisterEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        firstnameChanged: (e) => emit(
          state.copyWith(
            firstname: e.firstname,
            authFailureOrUnitOption: none(),
          ),
        ),
        lastnameChanged: (e) => emit(
          state.copyWith(
            lastname: e.lastname,
            authFailureOrUnitOption: none(),
          ),
        ),
        emailChanged: (e) => emit(
          state.copyWith(
            email: e.email,
            authFailureOrUnitOption: none(),
          ),
        ),
        passwordChanged: (e) => emit(
          state.copyWith(
            password: e.password,
            authFailureOrUnitOption: none(),
          ),
        ),
        registerButtonPressed: (e) async {
          // Validate user input
          final passedValidation = e.formKey.currentState!.validate();

          if (passedValidation) {
            emit(state.copyWith(
              isLoading: true,
              authFailureOrUnitOption: none(),
            ));

            // Attempt sign up
            final authFailureOrUnit =
                await _authFacade.registerWithUsernameAndPassword(
              registerDTO: RegisterDTO(
                firstname: state.firstname,
                lastname: state.lastname,
                password: state.password,
                email: state.email,
              ),
            );

            // Emit login result
            emit(state.copyWith(
              validateFields: false,
              isLoading: false,
              authFailureOrUnitOption: some(authFailureOrUnit),
            ));
          } else {
            // Failed validation
            emit(
              state.copyWith(
                isLoading: false,
                validateFields: true,
                authFailureOrUnitOption: none(),
              ),
            );
          }
        },
      );
    });
  }
}
