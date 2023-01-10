import 'package:bolisati/domain/api/pet/contracts/i.pet.repository.dart';
import 'package:bolisati/infrastructure/pet/pet.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/api/failures/api.failures.dart';

part 'pet.repository.provider.g.dart';

final petrepoprovider = Provider<IPetRepository>((ref) => PetRepository());
@riverpod
Future<Either<ApiFailures, dynamic>> getoffers(
    GetoffersRef ref, String token) async {
  final userprovider = ref.watch(petrepoprovider);
  return userprovider.getOffers(token: token);
}

@riverpod
Future<Either<ApiFailures, dynamic>> getcountry(
    GetcountryRef ref, String token) async {
  final userprovider = ref.watch(petrepoprovider);
  return userprovider.getcountries(apitoken: token);
}
