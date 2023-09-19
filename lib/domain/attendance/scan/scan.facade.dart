import 'package:dartz/dartz.dart';
import 'package:lecturer/domain/attendance/scan/scan.failure.dart';
import 'package:lecturer/infrastructure/academics/models/year_group.object.dart';
import 'package:lecturer/infrastructure/attendance/models/event.object.dart';
import 'package:lecturer/infrastructure/attendance/models/scan.object.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

abstract class ScanFacade {
  Future<Either<ScanFailure, ScanObject>> scanIn({
    required EventObject event,
    required DateTime dateTime,
    required String selfiePath,
    required YearGroupObject yearGroup,
  });

  Future<Either<ScanFailure, ScanObject>> scanOut(
      {required EventObject event, required DateTime dateTime});

  Future<bool> checkValidScan({
    required DateTime scanDate,
    required YearGroupObject studentYearGroup,
    List<YearGroupObject>? allowedYearGroups,
  });

  Future<Either<ScanFailure, Option<ScanObject>>> checkForScan({
    required EventObject event,
    required ParseUser user,
    required DateTime dateTime,
    bool? isScanIn,
    bool? isScanOut,
  });

  Future<Either<ScanFailure, Option<EventObject>>> getEvent(
      {required String objectId});
}
