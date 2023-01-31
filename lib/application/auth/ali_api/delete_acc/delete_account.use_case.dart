import 'package:bolisati/application/auth/ali_api/forget_paswword/forget.password.use.case.input.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/auth/ali.api/contracts/i.ali.api.auth.facade.dart';
import 'package:fpdart/fpdart.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/use_cases/i.use_case.dart';
import '../../../provider/auth.facade.provider.dart';
import 'delete_account.use_case.input.dart';

final deleteaccountUseCaseprovider = Provider((ref) =>
    DeleteAccountUseCase(authFacade: ref.watch(apiauthFacadeProvider)));

class DeleteAccountUseCase
    implements IUseCase<DeleteAccountUseCaseInput, dynamic> {
  final IApiAuthFacade? _authFacade;
  DeleteAccountUseCase({IApiAuthFacade? authFacade}) : _authFacade = authFacade;
  @override
  Future<Either<ApiFailures, dynamic>> execute(input) {
    return _authFacade!.deleteaccount(token: input.token!);
  }
}
