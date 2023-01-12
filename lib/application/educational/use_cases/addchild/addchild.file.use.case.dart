import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/provider/educational.repository.provvider.dart';
import 'package:bolisati/domain/api/educational/contracts/i.educational.repository.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'add.child.use.case.input.dart';

final educationaladdchildOrderProvider = Provider((ref) =>
    EducationalAddChildFileUseCase(
        educationalRepository: ref.watch(educationalrepoprovider)));

class EducationalAddChildFileUseCase
    implements IUseCase<EducationalAddChildFileUseCaseInput, dynamic> {
  final IEducationalRepository? _educationalRepository;

  EducationalAddChildFileUseCase(
      {IEducationalRepository? educationalRepository})
      : _educationalRepository = educationalRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      EducationalAddChildFileUseCaseInput input) async {
    return await _educationalRepository!.addchild(
      token: input.token!,
      model: input.model!,
    );
  }
}
