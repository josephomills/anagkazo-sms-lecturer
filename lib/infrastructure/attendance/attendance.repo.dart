import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lecturer/domain/attendance/attendance.facade.dart';
import 'package:lecturer/domain/attendance/attendance.failure.dart';
import 'package:lecturer/domain/core/config/injectable.core.dart';
import 'package:lecturer/domain/core/enums/types.enum.dart';
import 'package:lecturer/domain/core/extensions/string.ext.dart';
import 'package:lecturer/infrastructure/attendance/models/event.object.dart';
import 'package:lecturer/infrastructure/attendance/models/event_type.object.dart';
import 'package:lecturer/infrastructure/attendance/models/scan.object.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

@Injectable(as: AttendanceFacade)
class AttendanceRepo implements AttendanceFacade {
  @override
  Future<Either<AttendanceFailure, List<ScanObject>>> getAllScans() async {
    final eventTypeQuery = QueryBuilder<EventTypeObject>(EventTypeObject())
      ..whereEqualTo(
          EventTypeObject.kCategory, EventCategory.lecturer.name.capitalize);

    final eventQuery = QueryBuilder<EventObject>(EventObject())
      ..whereMatchesQuery(EventObject.kEventType, eventTypeQuery);

    final scanQuery = QueryBuilder<ScanObject>(ScanObject())
      ..whereEqualTo(ScanObject.kUser, getIt<ParseUser>().toPointer())
      // ..whereMatchesQuery(ScanObject.kEvent, eventQuery)
      ..includeObject([
        ScanObject.kEvent,
        "${ScanObject.kEvent}.${EventObject.kEventType}",
        ScanObject.kSelfie,
        ScanObject.kYearGroup,
      ])
      ..orderByDescending(ScanObject.kScannedInAt)
      ..setLimit(50);

    final resp = await scanQuery.query();
    if (resp.success) {
      return Right(resp.results == null
          ? <ScanObject>[]
          : resp.results!.cast<ScanObject>());
    }

    return Left(AttendanceFailure.serverError(message: resp.error!.message));
  }
}

// Map map = {
//   "user": {"__type": "Pointer", "className": "_User", "objectId": "6Mv2HlvU89"},
//   "event": {
//     "$inQuery": {
//       "where": {
//         "eventType": {
//           "$inQuery": {
//             "where": {"category": "Lecturer"},
//             "className": "EventType",
//           }
//         }
//       },
//       "className": "Event",
//     }
//   }
// };
