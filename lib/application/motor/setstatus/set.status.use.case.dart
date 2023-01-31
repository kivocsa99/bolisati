import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/motor/setstatus/set.status.use.case.input.dart';
import 'package:bolisati/application/provider/motor.repository.provider.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/motor/contracts/i.motor.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final setstatusOrderProvider = Provider((ref) =>
    SetStatusOrderUseCase(motorRepository: ref.watch(motorrepoprovider)));

class SetStatusOrderUseCase
    implements IUseCase<SetStatusOrderUseCaseInput, dynamic> {
  final IMotorRepository? _motorRepository;

  SetStatusOrderUseCase({IMotorRepository? motorRepository})
      : _motorRepository = motorRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      SetStatusOrderUseCaseInput input) async {
    return _motorRepository!.setstatus(
        orderid: input.id, token: input.token, status: input.status!);
  }
}
