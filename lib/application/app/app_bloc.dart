import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lecturer/domain/app/app.facade.dart';
import 'package:lecturer/domain/app/app.failure.dart';
import 'package:lecturer/infrastructure/academics/models/rotation.object.dart';
import 'package:lecturer/infrastructure/academics/models/year_group.object.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

@singleton
class AppBloc extends Bloc<AppEvent, AppState> {
  final AppFacade _appFacade;

  AppBloc(this._appFacade) : super(AppState.initial()) {
    on<AppEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        started: (e) async {
          emit(state.copyWith(isLoading: true));
          // TODO: pick settings from disk
          // Fetch rotations
          // add(const AppEvent.rotationsFetched());
          // Fetch all year groups
          final failureOrYearGroupList = await _appFacade.getAllYearGroups();

          emit(state.copyWith(
            isLoading: false,
            failureOrYearGroupListOption: some(failureOrYearGroupList),
          ));
        },
        themeModeToggled: (e) {
          // change state variable
          emit(state.copyWith(themeMode: e.themeMode));
          // change variable on disk
        },
        rotationsFetched: (e) async {
          final failureOrRotations = await _appFacade.getAllRotations();
          emit(
            state.copyWith(failureOrRotationsOption: some(failureOrRotations)),
          );
        },
        classesFetched: (e) async {},
      );
    });
  }
}
