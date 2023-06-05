import 'package:dartz/dartz.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:lecturer/domain/attendance/attendance.failure.dart';
import 'package:lecturer/domain/core/enums/types.enum.dart';
import 'package:lecturer/infrastructure/attendance/models/scan.object.dart';

abstract class AttendanceFacade {
  Future<Either<AttendanceFailure, QueryBuilder<ScanObject>>> getScanQuery(
      {required EventType eventType});
  Future<Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
      getAllScanQueries();
  QueryBuilder<ScanObject> getQuery(
      {required ParseUser user, required EventType eventType});
}
