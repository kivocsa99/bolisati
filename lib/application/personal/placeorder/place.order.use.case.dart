import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/personal/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/application/provider/personal.repository.provider.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/personal/contracts/i.personal.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final personalplaceOrderProvider = Provider((ref) => PersonalPlaceOrderUseCase(
    motorRepository: ref.watch(personalrepoprovider)));

class PersonalPlaceOrderUseCase
    implements IUseCase<PersonalPlaceOrderUseCaseInput, dynamic> {
  final IPersonalRepository? _motorRepository;

  PersonalPlaceOrderUseCase({IPersonalRepository? motorRepository})
      : _motorRepository = motorRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      PersonalPlaceOrderUseCaseInput input) async {
    return _motorRepository!.placeOrder(
        addons: input.addons, token: input.token, model: input.model!);
  }
}
