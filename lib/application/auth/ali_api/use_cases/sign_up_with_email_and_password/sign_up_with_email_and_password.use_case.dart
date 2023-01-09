import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';

import '../../../../../domain/auth/ali.api/contracts/i.ali.api.auth.facade.dart';
import '../../../../core/use_cases/i.use_case.dart';
import '../../../../provider/auth.facade.provider.dart';
import 'sign_up_with_email_and_password.input.dart';

final signUpWithEmailAndPasswordUseCaseProvider = Provider((ref) =>
    SignUpWithEmailAndPasswordUseCase(
        iApiAuthFacade: ref.watch(apiauthFacadeProvider)));

class SignUpWithEmailAndPasswordUseCase
    implements IUseCase<SignUpWithEmailAndPasswordUseCaseInput, dynamic> {
  final IApiAuthFacade? _iApiAuthFacade;

  SignUpWithEmailAndPasswordUseCase({IApiAuthFacade? iApiAuthFacade})
      : _iApiAuthFacade = iApiAuthFacade;

  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _iApiAuthFacade!
        .signUpWithCredintials(user: input.user!, password: input.password!);
  }
}
