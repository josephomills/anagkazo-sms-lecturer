import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:lecturer/domain/attendance/attendance.facade.dart';
import 'package:lecturer/domain/attendance/attendance.failure.dart';
import 'package:lecturer/domain/core/config/injectable.core.dart';
import 'package:lecturer/domain/core/enums/types.enum.dart';
import 'package:lecturer/domain/core/extensions/string.ext.dart';
import 'package:lecturer/infrastructure/attendance/models/event.object.dart';
import 'package:lecturer/infrastructure/attendance/models/event_type.object.dart';
import 'package:lecturer/infrastructure/attendance/models/scan.object.dart';

@Injectable(as: AttendanceFacade)
class AttendanceRepo implements AttendanceFacade {
  @override
  Future<Either<AttendanceFailure, List<ScanObject>>> getAllScans() async {
    final query = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kUser, getIt<ParseUser>().toPointer())
      ..whereMatchesQuery(
        ScanObject.kEvent,
        QueryBuilder<EventObject>(EventObject())
          ..whereMatchesQuery(
            EventObject.kEventType,
            QueryBuilder<EventTypeObject>(EventTypeObject())
              ..whereEqualTo(
                EventTypeObject.kCategory,
                EventCategory.lecturer.name.capitalize,
              ),
          ),
      )
      ..includeObject([
        ScanObject.kEvent,
        "${ScanObject.kEvent}.${EventObject.kEventType}",
        ScanObject.kSelfie,
      ])
      ..orderByDescending(ScanObject.kScannedInAt)
      ..setLimit(50);

    final resp = await query.query();
    if (resp.success) {
      return Right(resp.results == null
          ? <ScanObject>[]
          : resp.results!.cast<ScanObject>());
    }

    return Left(AttendanceFailure.serverError(message: resp.error!.message));
  }
}
