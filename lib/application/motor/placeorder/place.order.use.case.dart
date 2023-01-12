import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/motor/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/application/provider/motor.repository.provider.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/motor/contracts/i.motor.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final motorplaceOrderProvider = Provider((ref) =>
    MotorPlaceOrderUseCase(motorRepository: ref.watch(motorrepoprovider)));

class MotorPlaceOrderUseCase
    implements IUseCase<MotorPlaceOrderUseCaseInput, dynamic> {
  final IMotorRepository? _motorRepository;

  MotorPlaceOrderUseCase({IMotorRepository? motorRepository})
      : _motorRepository = motorRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      MotorPlaceOrderUseCaseInput input) async {
    return _motorRepository!
        .placeOrder(addons:input.addons,token: input.token, motororder: input.motorOrder!);
  }
}
