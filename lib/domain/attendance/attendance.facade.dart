import 'package:dartz/dartz.dart';
import 'package:lecturer/domain/attendance/attendance.failure.dart';
import 'package:lecturer/infrastructure/attendance/models/scan.object.dart';

abstract class AttendanceFacade {
  Future<Either<AttendanceFailure, List<ScanObject>>> getAllScans();
}
