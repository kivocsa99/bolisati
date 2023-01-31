import 'package:fpdart/fpdart.dart';

import '../../failures/api.failures.dart';

abstract class IUserRepository {
  Future<Either<ApiFailures, dynamic>> getorders({
    required String token,
  });
  Future<Either<ApiFailures, dynamic>> neworder({
    required String token,
    required String id,
    required String model,
  });
}
