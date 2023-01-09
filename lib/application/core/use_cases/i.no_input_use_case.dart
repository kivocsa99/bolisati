import "package:fpdart/fpdart.dart";
import '../../../domain/core/i.failure.dart';

abstract class IUseCase<IUseCaseNoInput , TUseCaseOutPut> {
  Future<Either<IFailure, TUseCaseOutPut>> execute(TUseCaseOutPut noInput);

}
