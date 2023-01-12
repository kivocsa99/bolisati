import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/provider/motor.repository.provider.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/motor/contracts/i.motor.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'attach.file.use.case.input.dart';

final motorattachfileProvider = Provider((ref) =>
    MedicalAttachFileUseCase(motorRepository: ref.watch(motorrepoprovider)));

class MedicalAttachFileUseCase
    implements IUseCase<MotorAttachFileUseCaseInput, dynamic> {
  final IMotorRepository? _motorRepository;

  MedicalAttachFileUseCase({IMotorRepository? motorRepository})
      : _motorRepository = motorRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      MotorAttachFileUseCaseInput input) async {
    return await _motorRepository!.attachFile(
      apitoken: input.token!,
      file: input.file!,
      orderid: input.orderid!,
    );
  }
}
