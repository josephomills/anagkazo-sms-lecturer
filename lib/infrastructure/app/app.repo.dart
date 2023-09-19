import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lecturer/domain/app/app.facade.dart';
import 'package:lecturer/domain/app/app.failure.dart';
import 'package:lecturer/infrastructure/academics/models/rotation.object.dart';
import 'package:lecturer/infrastructure/academics/models/year_group.object.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

@Injectable(as: AppFacade)
class AppRepo implements AppFacade {
  @override
  Future<Either<AppFailure, List<RotationObject>>> getAllRotations() async {
    final resp = await RotationObject().getAll();
    if (resp.success) {
      return Right(resp.results!.map((r) => r as RotationObject).toList());
    } else {
      return const Left(AppFailure.serverError());
    }
  }

  @override
  Future<Either<AppFailure, List<YearGroupObject>>> getAllYearGroups() async {
    var query = QueryBuilder(YearGroupObject());
    final resp = await query.query();
    if (resp.success) {
      // convert results to year group objects
      var allYearGroups =
          resp.results!.map((obj) => obj as YearGroupObject).toList();
      return Right(allYearGroups);
    }

    return Left(AppFailure.serverError(message: resp.error!.message));
  }
}
