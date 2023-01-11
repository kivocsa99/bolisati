import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/pet/use_cases/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/application/provider/pet.repository.provider.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/pet/contracts/i.pet.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final petplaceOrderProvider = Provider(
    (ref) => PetPlaceOrderUseCase(petRepository: ref.watch(petrepoprovider)));

class PetPlaceOrderUseCase
    implements IUseCase<PetPlaceOrderUseCaseInput, dynamic> {
  final IPetRepository? _petRepository;

  PetPlaceOrderUseCase({IPetRepository? petRepository})
      : _petRepository = petRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      PetPlaceOrderUseCaseInput input) async {
    return _petRepository!.placeOrder(
        addons: input.addons, token: input.token, model: input.model!);
  }
}
