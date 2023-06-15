part of 'attendance_bloc.dart';

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState({
    required bool isLoading,
    required Either<AttendanceFailure, List<ScanObject>> failureOrScans,
  }) = _AttendanceState;

  factory AttendanceState.initial() => const AttendanceState(
        isLoading: false,
        failureOrScans: Right([]),
      );
}
