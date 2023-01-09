import 'package:bolisati/application/auth/ali_api/use_cases/otp/otp_use_case_input.dart';
import 'package:bolisati/application/core/use_cases/i.use_case.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/auth/ali.api/contracts/i.ali.api.auth.facade.dart';

import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../provider/auth.facade.provider.dart';
final otpUseCaseProvider = Provider((ref) =>
    OtpUseCase(
        authFacade: ref.watch(apiauthFacadeProvider)));

class OtpUseCase implements IUseCase<OtpUseCaseInput, dynamic> {
  final IApiAuthFacade? _authFacade;
  OtpUseCase({IApiAuthFacade? authFacade}) : _authFacade = authFacade;
  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _authFacade!.otpVerfication(phone: input.phone!);
  }
}
