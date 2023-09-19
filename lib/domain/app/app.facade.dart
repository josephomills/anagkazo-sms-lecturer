import 'package:dartz/dartz.dart';
import 'package:lecturer/domain/app/app.failure.dart';
import 'package:lecturer/infrastructure/academics/models/rotation.object.dart';
import 'package:lecturer/infrastructure/academics/models/year_group.object.dart';

abstract class AppFacade {
  Future<Either<AppFailure, List<RotationObject>>> getAllRotations();
  Future<Either<AppFailure, List<YearGroupObject>>> getAllYearGroups();
}
