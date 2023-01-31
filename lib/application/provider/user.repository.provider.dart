import 'package:bolisati/domain/api/user/contracts/i.user.repository.dart';
import 'package:bolisati/infrastructure/user/user.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/api/failures/api.failures.dart';
part 'user.repository.provider.g.dart';

final userProvider = Provider<IUserRepository>((ref) => UserRepository());
@riverpod
Future<Either<ApiFailures, dynamic>> getorder(
    GetorderRef ref, String token) async {
  final userprovider = ref.watch(userProvider);
  return userprovider.getorders(token: token);
}

@riverpod
Future<Either<ApiFailures, dynamic>> getnew(
    GetnewRef ref, String token, String id, String model) async {
  final userprovider = ref.watch(userProvider);
  return userprovider.neworder(token: token, id: id, model: model);
}
