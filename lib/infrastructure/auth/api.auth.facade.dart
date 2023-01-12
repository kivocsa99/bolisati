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
        UserModel user = UserModel.fromJson(result.data["User"]);
        setting = Hive.box('setting');
        await setting.put("login", true);
        await setting.put('apitoken', result.data["api_token"]);
        await setting.put("name", user.name);
        await setting.put("email", user.email);
        await setting.put("password", password);
        await setting.put("phone", user.phone);
        await setting.put("firsttime", false);

        return result.data["api_token"];
      } else {
        return const ApiFailures.authFailed();
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
        await setting.put("name", user.name);
        await setting.put("email", user.email);
        await setting.put("password", password);
        await setting.put("phone", user.phone);
        await setting.put("firsttime", false);

        await setting.put('apitoken', result.data["api_token"]);

        return result.data["api_token"];
      } else {
        return const ApiFailures.authFailed();
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

  @override
  Future<Either<ApiFailures, Unit>> otpVerfication(
      {required String phone}) async {
    try {
      await _auth.verifyPhoneNumber(
          verificationCompleted: (verificationCompleted) {},
          verificationFailed: (verificationFailed) {},
          codeSent: (value, codeSent) {},
          codeAutoRetrievalTimeout: (codeAutoRetrievalTimeout) {});
      return right(unit);
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case inValidEmail:
          return left(const ApiFailures.authFailed());
        case servererror:
          return left(const ApiFailures.internalError());
        default:
          return left(const ApiFailures.noResponse());
      }
    }
  }

//ask ali for api token
  @override
  Future<Either<ApiFailures, dynamic>> updateuser({
    required String urlvalue,
    required String value,
    required String token,
  }) async {
    late Box setting;
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          "https://bolisati.bitsblend.org/api/V1/Users/Update?$urlvalue=$value&api_token=$token");
      if (result.data["AZSVR"] == "SUCCESS") {
        setting = Hive.box('setting');

        UserModel user = UserModel.fromJson(result.data["UserData"]);
        await setting.put("name", user.name);
        await setting.put("email", user.email);
        await setting.put("phone", user.phone);

        return user;
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
