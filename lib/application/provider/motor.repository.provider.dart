import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/api/failures/api.failures.dart';
import '../../domain/api/motor/contracts/i.motor.repository.dart';
import '../../infrastructure/motor/motor.repository.dart';
part 'motor.repository.provider.g.dart';

final motorrepoprovider =
    Provider<IMotorRepository>((ref) => MotorRepository());
@riverpod
Future<Either<ApiFailures, dynamic>> getcars(
    GetcarsRef ref, String token) async {
  final userprovider = ref.watch(motorrepoprovider);
  return userprovider.getcars(apitoken: token);
}
