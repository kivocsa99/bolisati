import 'package:fpdart/fpdart.dart';

import '../../failures/api.failures.dart';

abstract class IUserRepository {

  Future<Either<ApiFailures, dynamic>> getorders({
    required String token,
  });

}
