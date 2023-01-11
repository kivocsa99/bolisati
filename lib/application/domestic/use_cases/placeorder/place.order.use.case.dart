import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/domestic/use_cases/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/domain/api/domestic/contracts/i.domestic.repository.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../provider/domestic.repository.provider.dart';

final domesticplaceOrderProvider = Provider((ref) => DomesticPlaceOrderUseCase(
    domesticRepository: ref.watch(domesticrepoProvider)));

class DomesticPlaceOrderUseCase
    implements IUseCase<DomesticPlaceOrderUseCaseInput, dynamic> {
  final IDomesticRepository? _domesticRepository;

  DomesticPlaceOrderUseCase({IDomesticRepository? domesticRepository})
      : _domesticRepository = domesticRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      DomesticPlaceOrderUseCaseInput input) async {
    return await _domesticRepository!.placeOrder(
        token: input.token!, model: input.model!, addons: input.addons);
  }
}
