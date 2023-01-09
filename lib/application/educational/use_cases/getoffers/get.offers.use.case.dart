import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/medical/use_cases/getoffers/get.offers.use.case.input.dart';import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/api/medical/contracts/i.medical.repository.dart';
import '../../../provider/medical.repository.provider.dart';

final medicalgetOffersProvider = Provider((ref) =>
    MedicalGetOffersUseCase(medicalRepository: ref.watch(medicalrepoProvider)));

class MedicalGetOffersUseCase implements IUseCase<MedicalGetOffersUseCaseInput, dynamic> {
  final IMedicalRepository? _medicalRepository;

  MedicalGetOffersUseCase({IMedicalRepository? medicalRepository})
      : _medicalRepository = medicalRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      MedicalGetOffersUseCaseInput input) async {
    return await _medicalRepository!.getOffers(
      token: input.token,
      age: input.age,
      genderid: input.genderid,
      insuranceType: input.insurancetype,
    );
  }
}
