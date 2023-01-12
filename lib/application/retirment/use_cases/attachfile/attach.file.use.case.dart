import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/retirment/contracts/i.retirment.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../provider/retirment.repository.provider.dart';
import 'attach.file.use.case.input.dart';

final retirmentattachplaceOrderProvider = Provider((ref) =>
    RetirmentAttachFileUseCase(
        retirmentRepository: ref.watch(retirmentrepoprovider)));

class RetirmentAttachFileUseCase
    implements IUseCase<RetirmentAttachFileUseCaseInput, dynamic> {
  final IRetirmentRepository? _retirmentRepository;

  RetirmentAttachFileUseCase({IRetirmentRepository? retirmentRepository})
      : _retirmentRepository = retirmentRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      RetirmentAttachFileUseCaseInput input) async {
    return await _retirmentRepository!.attachFile(
      apitoken: input.token!,
      file: input.file!,
      orderid: input.orderid!,
    );
  }
}
