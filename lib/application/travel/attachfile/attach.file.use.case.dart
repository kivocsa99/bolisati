import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/provider/travel.repository.provider.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/travel/contracts/i.travel.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'attach.file.use.case.input.dart';

final travelattachfileProvider = Provider((ref) =>
    TrvelAttachFileUseCase(travelRepository: ref.watch(travelrepoprovider)));

class TrvelAttachFileUseCase
    implements IUseCase<TravelAttachFileUseCaseInput, dynamic> {
  final ITravelRepository? _travelRepository;

  TrvelAttachFileUseCase({ITravelRepository? travelRepository})
      : _travelRepository = travelRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      TravelAttachFileUseCaseInput input) async {
    return await _travelRepository!.attachFile(
      apitoken: input.token!,
      file: input.file!,
      orderid: input.orderid!,
    );
  }
}
