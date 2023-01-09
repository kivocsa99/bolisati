import "package:fpdart/fpdart.dart";
import '../../../domain/core/i.failure.dart';

abstract class IUseCase<TUseCaseInput, TUseCaseOutput> {
  Future<Either<IFailure, TUseCaseOutput>> execute(TUseCaseInput input);
}
