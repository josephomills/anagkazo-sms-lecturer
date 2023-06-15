import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lecturer/domain/attendance/attendance.facade.dart';
import 'package:lecturer/domain/attendance/attendance.failure.dart';
import 'package:lecturer/infrastructure/attendance/models/scan.object.dart';

part 'attendance_event.dart';
part 'attendance_state.dart';
part 'attendance_bloc.freezed.dart';

@injectable
class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  final AttendanceFacade _attFacade;

  AttendanceBloc(this._attFacade) : super(AttendanceState.initial()) {
    on<AttendanceEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        getAllScans: (e) async {
          emit(state.copyWith(isLoading: true));

          final failureOrScans = await _attFacade.getAllScans();

          emit(state.copyWith(
            isLoading: false,
            failureOrScans: failureOrScans,
          ));
        },
      );
    });
  }
}
