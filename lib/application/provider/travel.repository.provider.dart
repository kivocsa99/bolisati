import 'package:bolisati/domain/api/travel/contracts/i.travel.repository.dart';
import 'package:bolisati/infrastructure/travel/travel.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/api/failures/api.failures.dart';
part 'travel.repository.provider.g.dart';

final travelrepoprovider =
    Provider<ITravelRepository>((ref) => TravelRepository());
@riverpod
Future<Either<ApiFailures, dynamic>> getreregions(
    GetreregionsRef ref, String token) async {
  final userprovider = ref.watch(travelrepoprovider);
  return userprovider.getregions(apitoken: token);
}
