import 'dart:convert';

import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/user/contracts/i.user.repository.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../../domain/api/orders/user.orders.model.dart';

class UserRepository implements IUserRepository {
  @override
  Future<Either<ApiFailures, dynamic>> getorders(
      {required String token}) async {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          "https://bolisati.bitsblend.org/api/V1/Users/Orders?api_token=$token");
      print(result.data);
      if (result.data["AZSVR"] == "SUCCESS") {
        var orders = UserOrdersModel.fromJson(result.data);
        return orders;
      } else {
        return const ApiFailures.internalError();
      }
    }, (error, stackTrace) {
      print(error);
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
