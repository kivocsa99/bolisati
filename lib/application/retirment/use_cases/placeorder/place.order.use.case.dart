import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/retirment/use_cases/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/api/medical/contracts/i.medical.repository.dart';
import '../../../provider/medical.repository.provider.dart';

final retirmentplaceOrderProvider = Provider((ref) => RetirmentPlaceOrderUseCase(
    medicalRepository: ref.watch(medicalrepoProvider)));

class RetirmentPlaceOrderUseCase
    implements IUseCase<RetirmentPlaceOrderUseCaseInput, dynamic> {
  final IMedicalRepository? _medicalRepository;

  RetirmentPlaceOrderUseCase({IMedicalRepository? medicalRepository})
      : _medicalRepository = medicalRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      RetirmentPlaceOrderUseCaseInput input) async {
    return await _medicalRepository!.placeOrder(
      token: input.token,
      addons: input.addons,
      medicalOrderModel: input.medicalOrderModel,
    );
  }
}
