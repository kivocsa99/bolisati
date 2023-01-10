import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/api/medical/contracts/i.medical.repository.dart';
import '../../../provider/medical.repository.provider.dart';
import 'attach.file.use.case.input.dart';

final educationalattachplaceOrderProvider = Provider((ref) =>
    EducationalAttachFileUseCase(
        medicalRepository: ref.watch(medicalrepoProvider)));

class EducationalAttachFileUseCase
    implements IUseCase<EducationalAttachFileUseCaseInput, dynamic> {
  final IMedicalRepository? _medicalRepository;

  EducationalAttachFileUseCase({IMedicalRepository? medicalRepository})
      : _medicalRepository = medicalRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      EducationalAttachFileUseCaseInput input) async {
    return await _medicalRepository!.attachFile(
      apitoken: input.token,
      file: input.file,
      orderid: input.orderid,
    );
  }
}
