import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/application/provider/travel.repository.provider.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/api/travel/contracts/i.travel.repository.dart';
import 'get.offers.use.case.input.dart';

final travelgetOffersProvider = Provider((ref) =>
    TravelGetOffersUseCase(travelRepository: ref.watch(travelrepoprovider)));

class TravelGetOffersUseCase
    implements IUseCase<TravelGetOffersUseCaseInput, dynamic> {
  final ITravelRepository? _travelRepository;

  TravelGetOffersUseCase({ITravelRepository? travelRepository})
      : _travelRepository = travelRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(
      TravelGetOffersUseCaseInput input) async {
    return await _travelRepository!.getOffers(
      age: input.age,
      period: input.periodindays,
      regionid: input.regionid,
      token: input.token,
    );
  }
}
