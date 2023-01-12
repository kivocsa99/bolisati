import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/educational/use_cases/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/api/educational/contracts/i.educational.repository.dart';
import '../../../provider/educational.repository.provvider.dart';

final educationalplaceOrderProvider = Provider((ref) =>
    EducationalPlaceOrderUseCase(
        educationalRepository: ref.watch(educationalrepoprovider)));

class EducationalPlaceOrderUseCase
    implements IUseCase<EducationalPlaceOrderUseCaseInput, dynamic> {
  final IEducationalRepository? _educationalRepository;

  EducationalPlaceOrderUseCase({IEducationalRepository? educationalRepository})
      : _educationalRepository = educationalRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      EducationalPlaceOrderUseCaseInput input) async {
    return await _educationalRepository!.placeOrder(
      token: input.token!,
      addons: input.addons,
      model: input.model!,
    );
  }
}
