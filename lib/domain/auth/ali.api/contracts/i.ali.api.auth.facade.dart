import "package:fpdart/fpdart.dart";
import 'package:flutter/cupertino.dart';
import '../../../api/failures/api.failures.dart';
import '../../../api/user/model/usermodel.dart';

abstract class IApiAuthFacade {
  Future<Either<ApiFailures, dynamic>> signUpWithCredintials({
    required UserModel user,
    required String password,
  });
  Future<Either<ApiFailures, dynamic>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut(BuildContext context);
  
  Future<Either<ApiFailures, dynamic>> updateuser({
    required String phone,
    required String password,
  });
  
  Future<Either<ApiFailures, dynamic>> otpVerfication({
    required String phone,
  });
}
