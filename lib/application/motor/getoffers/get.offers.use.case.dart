import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/provider/motor.repository.provider.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/motor/contracts/i.motor.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'get.offers.use.case.input.dart';

final motorgetOffersProvider = Provider((ref) =>
    MotorGetOffersUseCase(motorRepository: ref.watch(motorrepoprovider)));

class MotorGetOffersUseCase
    implements IUseCase<MotorGetOffersUseCaseInput, dynamic> {
  final IMotorRepository? _motorRepository;

  MotorGetOffersUseCase({IMotorRepository? motorRepository})
      : _motorRepository = motorRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      MotorGetOffersUseCaseInput input) async {
    return await _motorRepository!.getOffers(
      token: input.token,
      estimatedcarprice: input.estimatedcarprice,
      vehiclemodelid: input.vehiclemodelid,
    );
  }
}
