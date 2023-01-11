// ignore_for_file: unused_field

import 'package:bolisati/application/auth/ali_api/use_cases/update/update_use_case.input.dart';
import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../domain/api/failures/api.failures.dart';
import '../../../../../domain/auth/ali.api/contracts/i.ali.api.auth.facade.dart';
import '../../../../core/use_cases/i.use_case.dart';
import '../../../../provider/auth.facade.provider.dart';

final updateuserprovider =
    Provider((ref) => UpdateUser(authFacade: ref.watch(apiauthFacadeProvider)));

class UpdateUser implements IUseCase<UpdateUserInput, dynamic> {
  final IApiAuthFacade? _authFacade;
  final Ref? _read;
  UpdateUser({IApiAuthFacade? authFacade, Ref? read})
      : _authFacade = authFacade,
        _read = read;

  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _authFacade!.updateuser(
        value: input.value!,
        urlvalue: input.urlvalue!,
        token: input.token!,

       );
  }
}
