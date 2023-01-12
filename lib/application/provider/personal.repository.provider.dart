import 'package:bolisati/domain/api/personal/contracts/i.personal.repository.dart';
import 'package:bolisati/infrastructure/personal/personal.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/api/failures/api.failures.dart';
part 'personal.repository.provider.g.dart';

final personalrepoprovider =
    Provider<IPersonalRepository>((ref) => PersonalRepository());

@riverpod
Future<Either<ApiFailures, dynamic>> getoccupation(
    GetoccupationRef ref, String token) async {
  final userprovider = ref.watch(personalrepoprovider);
  return userprovider.getoccupation(apitoken: token);
}
