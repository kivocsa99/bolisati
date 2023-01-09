import '../../../../../domain/api/user/model/usermodel.dart';

class SignUpWithEmailAndPasswordUseCaseInput {
  final UserModel? user;
  final String? password;

  SignUpWithEmailAndPasswordUseCaseInput({
    this.user,
    this.password,
  });
}
