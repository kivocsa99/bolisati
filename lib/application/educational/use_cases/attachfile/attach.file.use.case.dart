import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/provider/educational.repository.provvider.dart';
import 'package:bolisati/domain/api/educational/contracts/i.educational.repository.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'attach.file.use.case.input.dart';

final educationalattachplaceOrderProvider = Provider((ref) =>
    EducationalAttachFileUseCase(
        educationalRepository: ref.watch(educationalrepoprovider)));

class EducationalAttachFileUseCase
    implements IUseCase<EducationalAttachFileUseCaseInput, dynamic> {
  final IEducationalRepository? _educationalRepository;

  EducationalAttachFileUseCase({IEducationalRepository? educationalRepository})
      : _educationalRepository = educationalRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      EducationalAttachFileUseCaseInput input) async {
    return await _educationalRepository!.attachFile(
      apitoken: input.token,
      file: input.file,
      orderid: input.orderid,
    );
  }
}
