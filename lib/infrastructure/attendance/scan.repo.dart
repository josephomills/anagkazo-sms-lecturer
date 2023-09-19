import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lecturer/domain/attendance/scan/scan.facade.dart';
import 'package:lecturer/domain/attendance/scan/scan.failure.dart';
import 'package:lecturer/domain/core/config/injectable.core.dart';
import 'package:lecturer/infrastructure/academics/models/year_group.object.dart';
import 'package:lecturer/infrastructure/attendance/models/event.object.dart';
import 'package:lecturer/infrastructure/attendance/models/scan.object.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

@Injectable(as: ScanFacade)
class ScanRepo implements ScanFacade {
  @override
  Future<bool> checkValidScan({
    required DateTime scanDate,
    required YearGroupObject studentYearGroup,
    List<YearGroupObject>? allowedYearGroups,
  }) {
    // TODO: implement checkValidScan
    throw UnimplementedError();
  }

  @override
  Future<Either<ScanFailure, ScanObject>> scanIn({
    required EventObject event,
    required DateTime dateTime,
    required String selfiePath,
    required YearGroupObject yearGroup,
  }) async {
    final user = getIt<ParseUser>();

    // Check for a previous scan
    final scanObjOption = (await checkForScan(
            event: event, user: user, isScanIn: true, dateTime: dateTime))
        .getOrElse(() => none());
    final bool alreadyScanned = scanObjOption.isSome();

    if (alreadyScanned) {
      final scanObj = scanObjOption.getOrElse(() => ScanObject());
      final validObj = scanObj.objectId != null;
      return Left(ScanFailure.duplicateScanError(
        message: validObj
            ? "You have already scanned in today."
            : "Invalid scan object found",
        scanObject: validObj ? scanObj : null,
      ));
    } else {
      // upload selfie
      final selfie = ParseFile(File(selfiePath));
      final uploadResp = await selfie.save();

      if (uploadResp.success) {
        // create scan object
        final scan = ScanObject()
          ..user = user
          ..event = event
          ..selfie = selfie
          ..scannedInAt = dateTime
          ..yearGroup = yearGroup;
        // record scan
        final ParseResponse resp = await scan.save();

        if (resp.success) {
          await scan.fetch();
          return Right(scan);
        }

        return Left(ScanFailure.serverError(message: resp.error!.message));
      } else {
        return Left(
            ScanFailure.serverError(message: uploadResp.error!.message));
      }
    }
  }

  @override
  Future<Either<ScanFailure, ScanObject>> scanOut(
      {required EventObject event, required DateTime dateTime}) async {
    final user = getIt<ParseUser>();

    // Check for a previous scan
    final scanObjOption =
        (await checkForScan(event: event, user: user, dateTime: dateTime))
            .getOrElse(() => none());
    final bool alreadyScanned = scanObjOption.isSome();
    final scanObj = scanObjOption.getOrElse(() => ScanObject());

    if (alreadyScanned) {
      final alreadyScannedOut = scanObj.scannedOutAt != null;
      if (alreadyScannedOut) {
        // return failure
        final validObj = scanObj.objectId != null;
        return Left(ScanFailure.duplicateScanError(
          message: validObj
              ? "You have already scanned out."
              : "Invalid scan object found",
          scanObject: validObj ? scanObj : null,
        ));
      } else {
        // record scan out
        scanObj.scannedOutAt = dateTime;
        final scanResp = await scanObj.save();
        if (scanResp.success) {
          return Right(scanObj);
        } else {
          return Left(
              ScanFailure.serverError(message: scanResp.error!.message));
        }
      }
    } else {
      // No scan at all: means student was late
      // CreateScan object

      final scan = ScanObject()
        ..user = user
        ..event = event
        ..scannedOutAt = dateTime;

      final resp = await scan.save();

      if (resp.success) {
        await scan.fetch();
        return Right(scan);
      }

      return const Left(ScanFailure.serverError());
    }
  }

  @override
  Future<Either<ScanFailure, Option<ScanObject>>> checkForScan({
    required EventObject event,
    required ParseUser user,
    required DateTime dateTime,
    bool? isScanIn,
    bool? isScanOut,
  }) async {
    final scanQuery = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kEvent, event.toPointer())
      ..whereEqualTo(ScanObject.kUser, user.toPointer())
      ..orderByDescending(ScanObject.kScannedInAt);

    if (isScanOut != null && isScanOut) {
      scanQuery.whereValueExists(ScanObject.kScannedOutAt, true);
    }
    if (isScanIn != null && isScanIn) {
      scanQuery.whereValueExists(ScanObject.kScannedInAt, true);
    }

    final resp = await scanQuery.query<ScanObject>();
    if (resp.success) {
      if (resp.results == null || resp.results!.isEmpty) {
        // No scan
        return Right(none());
      } else {
        // already scanned
        final ScanObject scanObject = resp.results!.first as ScanObject;
        // only returned scans from the same day
        if (Moment(scanObject.scannedInAt!).isAtSameDayAs(dateTime)) {
          return Right(some(scanObject));
        } else {
          return Right(none());
        }
      }
    }

    return Left(ScanFailure.serverError(message: resp.error!.message));
  }

  @override
  Future<Either<ScanFailure, Option<EventObject>>> getEvent(
      {required String objectId}) async {
    var resp = await EventObject().getObject(objectId);
    if (resp.success) {
      if (resp.results == null || resp.results!.isEmpty) {
        return Right(none());
      } else {
        final obj = resp.results!.first as EventObject;
        return Right(some(obj));
      }
    } else {
      return Left(ScanFailure.serverError(message: resp.error!.message));
    }
  }
}
