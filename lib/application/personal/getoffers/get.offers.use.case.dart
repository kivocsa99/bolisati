import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/provider/personal.repository.provider.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/personal/contracts/i.personal.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'get.offers.use.case.input.dart';

final personalgetOffersProvider = Provider((ref) =>
    PersonalGetOffersUseCase(motorRepository: ref.watch(personalrepoprovider)));

class PersonalGetOffersUseCase
    implements IUseCase<PersonalGetOffersUseCaseInput, dynamic> {
  final IPersonalRepository? _motorRepository;

  PersonalGetOffersUseCase({IPersonalRepository? motorRepository})
      : _motorRepository = motorRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      PersonalGetOffersUseCaseInput input) async {
    return await _motorRepository!.getOffers(
      token: input.token,
      age: input.age,
      amount: input.amount,
      personaltypeid: input.typeid,
    );
  }
}
