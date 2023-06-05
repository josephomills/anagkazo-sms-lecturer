import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lecturer/domain/app/app.facade.dart';
import 'package:lecturer/infrastructure/academics/models/rotation.object.dart';
import 'package:lecturer/domain/app/app.failure.dart';

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
}
