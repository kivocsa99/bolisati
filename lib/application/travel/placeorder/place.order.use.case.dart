import 'package:bolisati/application/core/use_cases/i.use_case.dart';

import 'package:bolisati/application/provider/travel.repository.provider.dart';
import 'package:bolisati/application/travel/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/api/travel/contracts/i.travel.repository.dart';

final travelplaceorderProvider = Provider((ref) =>
    TravelPlaceOrderUseCase(travelRepository: ref.watch(travelrepoprovider)));

class TravelPlaceOrderUseCase
    implements IUseCase<TravelPlaceOrderUseCaseInput, dynamic> {
  final ITravelRepository? _travelRepository;

  TravelPlaceOrderUseCase({ITravelRepository? travelRepository})
      : _travelRepository = travelRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      TravelPlaceOrderUseCaseInput input) async {
    return _travelRepository!
        .placeOrder(addons: input.addons,token: input.token, travelOrder: input.travelOrder!);
  }
}
