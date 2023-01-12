import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/provider/pet.repository.provider.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/pet/contracts/i.pet.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'attach.file.use.case.input.dart';

final petattachfileProvider = Provider(
    (ref) => PetAttachFileUseCase(motorRepository: ref.watch(petrepoprovider)));

class PetAttachFileUseCase
    implements IUseCase<PetAttachFileUseCaseInput, dynamic> {
  final IPetRepository? _motorRepository;

  PetAttachFileUseCase({IPetRepository? motorRepository})
      : _motorRepository = motorRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      PetAttachFileUseCaseInput input) async {
    return await _motorRepository!.attachFile(
      apitoken: input.token!,
      file: input.file!,
      orderid: input.orderid!,
    );
  }
}
