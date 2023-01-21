import 'package:bolisati/application/auth/ali_api/forget_paswword/forget.password.use.case.input.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/auth/ali.api/contracts/i.ali.api.auth.facade.dart';
import 'package:fpdart/fpdart.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/use_cases/i.use_case.dart';

class ForgetPasswordUseCase
    implements IUseCase<ForgetPasswordUseCaseInput, dynamic> {
  Ref? _read;
  IApiAuthFacade? _authFacade;
  ForgetPasswordUseCase({IApiAuthFacade? apiAuthFacade})
      : _authFacade = apiAuthFacade;
  @override
  Future<Either<ApiFailures, dynamic>> execute(input) {
    return _authFacade!.forgetpassword(email: input.email!);
  }
}
