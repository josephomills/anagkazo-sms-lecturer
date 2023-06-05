import 'package:dartz/dartz.dart';
import 'package:lecturer/domain/app/app.failure.dart';
import 'package:lecturer/infrastructure/academics/models/rotation.object.dart';

abstract class AppFacade {
  Future<Either<AppFailure, List<RotationObject>>> getAllRotations();
}
