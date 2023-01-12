import 'package:bolisati/domain/api/domestic/contracts/i.domestic.repository.dart';
import 'package:bolisati/infrastructure/domistec/domestic.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/api/failures/api.failures.dart';

part 'domestic.repository.provider.g.dart';

final domesticrepoProvider =
    Provider<IDomesticRepository>((ref) => DomesticRepository());

@riverpod
Future<Either<ApiFailures, dynamic>> getoffers(
    GetoffersRef ref, String token) async {
  final userprovider = ref.watch(domesticrepoProvider);
  return userprovider.getOffers(token: token);
}
