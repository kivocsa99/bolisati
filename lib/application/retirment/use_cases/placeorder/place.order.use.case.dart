import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/provider/retirment.repository.provider.dart';
import 'package:bolisati/application/retirment/use_cases/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/api/retirment/contracts/i.retirment.repository.dart';

final retirmentplaceOrderProvider = Provider((ref) => RetirmentPlaceOrderUseCase(
    retirmentRepository: ref.watch(retirmentrepoprovider)));

class RetirmentPlaceOrderUseCase
    implements IUseCase<RetirmentPlaceOrderUseCaseInput, dynamic> {
  final IRetirmentRepository? _retirmentRepository;

  RetirmentPlaceOrderUseCase({IRetirmentRepository? retirmentRepository})
      : _retirmentRepository = retirmentRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      RetirmentPlaceOrderUseCaseInput input) async {
    return await _retirmentRepository!.placeOrder(
      token: input.token!,
      retirementOrderModel: input.retirementOrderModel!,
    );
  }
}
