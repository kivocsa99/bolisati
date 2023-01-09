import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/auth/ali.api/contracts/i.ali.api.auth.facade.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/api/user/model/usermodel.dart';

//test api_tokin = 8InjmIhAh4iCaE639W5fuID6XPQ0GGzH
class ApiAuthFacade implements IApiAuthFacade {
  final _auth = FirebaseAuth.instance;
  static const String inValidPassword = "wrong-password";
  static const String inValidEmail = "user-not-found";
  static const String inUse = "email-already-in-use";
  static const String servererror = "server-error";
  //sign in return
  @override
  Future<Either<ApiFailures, dynamic>> signInWithEmailAndPassword(
      {required String email, required String password}) {
    late Box setting;
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          "https://bolisati.bitsblend.org/api/V1/Users/GetToken?phone=$email&password=$password");
      if (result.data["AZSVR"] == "SUCCESS") {
        setting = Hive.box('setting');
        await setting.put("login", true);
        await setting.put('apitoken', result.data["api_token"]);
        return result.data["api_token"];
      } else {
        return const ApiFailures.authFailed();
      }
    }, (error, stackTrace) {
      if (error is DioError) {
        print(error);
        switch (error.type) {
          case DioErrorType.connectTimeout:
            return const ApiFailures.connnectionTimeOut();
          case DioErrorType.cancel:
            return const ApiFailures.cancel();
          case DioErrorType.response:
            return const ApiFailures.noResponse();
          default:
            return const ApiFailures.noResponse();
        }
      }
      return const ApiFailures.internalError();
    });
    return result.map((r) => r).run();
  }

  @override
  Future<void> signOut(BuildContext context) async {
    return await _auth.signOut();
  }

  @override
  Future<Either<ApiFailures, dynamic>> signUpWithCredintials(
      {required UserModel user, required String password}) async {
    late Box setting;
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          "https://bolisati.bitsblend.org/api/V1/Users/Register?name=${user.name}&password=$password&phone=${user.phone}&email=${user.email}");
      if (result.data["AZSVR"] == "SUCCESS") {
        setting = Hive.box('setting');
        await setting.put("login", true);
        await setting.put('apitoken', result.data["api_token"]);

        return result.data["api_token"];
      } else {
        return const ApiFailures.authFailed();
      }
    }, (error, stackTrace) {
      if (error is DioError) {
        print(error);

        switch (error.type) {
          case DioErrorType.connectTimeout:
            return const ApiFailures.connnectionTimeOut();
          case DioErrorType.cancel:
            return const ApiFailures.cancel();
          case DioErrorType.response:
            return const ApiFailures.noResponse();
          default:
            return const ApiFailures.noResponse();
        }
      }
      return const ApiFailures.internalError();
    });
    return result.map((r) => r).run();
  }

  @override
  Future<Either<ApiFailures, dynamic>> otpVerfication(
      {required String phone}) async {
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final response = await _auth.verifyPhoneNumber(
          phoneNumber: phone,
          verificationCompleted: (verificationCompleted) async {
            return;
          },
          verificationFailed: (verificationFailed) {},
          codeSent: (value, codeSent) {},
          codeAutoRetrievalTimeout: (codeAutoRetrievalTimeout) {});
      return response;
    }, (error, stackTrace) {
      if (error is FirebaseAuthException) {
        // switch (error.code) {
        //   case  :
        //     return const ApiFailures.connnectionTimeOut();
        //   case DioErrorType.cancel:
        //     return const ApiFailures.cancel();
        //   case DioErrorType.response:
        //     return const ApiFailures.noResponse();
        //   default:
        return const ApiFailures.noResponse();
        // }
      }
      return const ApiFailures.internalError();
    });
    return result.map((r) => r).run();
  }

  @override
  Future<Either<ApiFailures, dynamic>> updateuser(
      {required String phone,
      required String password,
      String? email,
      String? name,
      String? token}) async {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          "https://bolisati.bitsblend.org/api/V1/Users/Update?name=$name&api_token=$token&email=$email&phone=$phone&password=$password");
      if (result.data["AZSVR"] == "SUCCESS") {
        return result.data["UserData"];
      } else {
        return const ApiFailures.internalError();
      }
    }, (error, stackTrace) {
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.connectTimeout:
            return const ApiFailures.connnectionTimeOut();
          case DioErrorType.cancel:
            return const ApiFailures.cancel();
          case DioErrorType.response:
            return const ApiFailures.noResponse();
          default:
            return const ApiFailures.noResponse();
        }
      }
      return const ApiFailures.internalError();
    });
    return result.map((r) => r).run();
  }
}
