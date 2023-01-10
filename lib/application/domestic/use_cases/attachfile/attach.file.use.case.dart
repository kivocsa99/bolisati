import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/provider/domestic.repository.provider.dart';
import 'package:bolisati/domain/api/domestic/contracts/i.domestic.repository.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


import 'attach.file.use.case.input.dart';

final domesticattachplaceOrderProvider = Provider((ref) =>
    MedicalAttachFileUseCase(
        domesticRepository: ref.watch(domesticrepoProvider)));

class MedicalAttachFileUseCase
    implements IUseCase<DomesticAttachFileUseCaseInput, dynamic> {
  final IDomesticRepository? _domesticRepository;

  MedicalAttachFileUseCase({IDomesticRepository? domesticRepository})
      : _domesticRepository = domesticRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      DomesticAttachFileUseCaseInput input) async {
    return await _domesticRepository!.attachFile(
      apitoken: input.token,
      file: input.file,
      orderid: input.orderid,
    );
  }
}
