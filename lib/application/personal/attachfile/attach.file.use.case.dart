import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/provider/motor.repository.provider.dart';
import 'package:bolisati/application/provider/personal.repository.provider.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/motor/contracts/i.motor.repository.dart';
import 'package:bolisati/domain/api/personal/contracts/i.personal.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/api/medical/contracts/i.medical.repository.dart';
import 'attach.file.use.case.input.dart';

final personalattachfileProvider = Provider((ref) =>
    PersonalAttachFileUseCase(personalRepository: ref.watch(personalrepoprovider)));

class PersonalAttachFileUseCase
    implements IUseCase<MotorAttachFileUseCaseInput, dynamic> {
  final IPersonalRepository? _personalRepository;

  PersonalAttachFileUseCase({IPersonalRepository? personalRepository})
      : _personalRepository = personalRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      MotorAttachFileUseCaseInput input) async {
    return await _personalRepository!.attachFile(
      apitoken: input.token!,
      file: input.file!,
      orderid: input.orderid!,
    );
  }
}
