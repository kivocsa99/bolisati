import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/auth/ali.api/contracts/i.ali.api.auth.facade.dart';
import '../../infrastructure/auth/api.auth.facade.dart';


final apiauthFacadeProvider = Provider<IApiAuthFacade>((ref)=>ApiAuthFacade());

