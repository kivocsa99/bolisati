import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/provider/personal.repository.provider.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/personal/contracts/i.personal.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'attach.file.use.case.input.dart';

final personalattachfileProvider = Provider((ref) =>
    PersonalAttachFileUseCase(personalRepository: ref.watch(personalrepoprovider)));

class PersonalAttachFileUseCase
    implements IUseCase<PersonalAttachFileUseCaseInput, dynamic> {
  final IPersonalRepository? _personalRepository;

  PersonalAttachFileUseCase({IPersonalRepository? personalRepository})
      : _personalRepository = personalRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      PersonalAttachFileUseCaseInput input) async {
    return await _personalRepository!.attachFile(
      apitoken: input.token!,
      file: input.file!,
      orderid: input.orderid!,
    );
  }
}
