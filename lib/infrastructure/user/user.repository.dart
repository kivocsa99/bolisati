// ignore_for_file: avoid_print

import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/orders/domesticworkerorders/domesticworkersmodel.dart';
import 'package:bolisati/domain/api/orders/educationalorders/educationalordermodel.dart';
import 'package:bolisati/domain/api/orders/medicalorders/medicalordermodel.dart';
import 'package:bolisati/domain/api/orders/motororders/motorordermodel.dart';
import 'package:bolisati/domain/api/orders/personalaccidentorders/personalaccidentordermodel.dart';
import 'package:bolisati/domain/api/orders/travelorders/travelordermodel.dart';
import 'package:bolisati/domain/api/user/contracts/i.user.repository.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/api/orders/petorders/petordermodel.dart';
import '../../domain/api/orders/retirementorders/retirementordermodel.dart';
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

  @override
  Future<Either<ApiFailures, dynamic>> neworder(
      {required String token,
      required String id,
      required String model}) async {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          "https://bolisati.bitsblend.org/api/V1/Misc/GetOrder?type=$model&id=$id&api_token=$token");

      if (result.data["AZSVR"] == "SUCCESS") {
        print(result.data);
        print(result.data["Order"]["files"][0]["belongable_type"]);
        String type = result.data["Order"]["files"][0]["belongable_type"];
        return type == "App\\Models\\RetirementOrder"
            ? RetirementOrderModel.fromJson(result.data["Order"])
            : type == "App\\Models\\PetOrder"
                ? PetOrderModel.fromJson(result.data["Order"])
                : type == "App\\Models\\TravelOrder"
                    ? TravelOrderModel.fromJson(result.data["Order"])
                    : type == "App\\Models\\MotorOrder"
                        ? MotorOrderModel.fromJson(result.data["Order"])
                        : type == "App\\Models\\PersonalAccidentOrder"
                            ? PersonalAccidentOrderModel.fromJson(
                                result.data["Order"])
                            : type == "App\\Models\\DomesticWorkerOrder"
                                ? DomesticWorkersOrderModel.fromJson(
                                    result.data["Order"])
                                : type == "App\\Models\\EducationalOrder"
                                    ? EducationalOrderModel.fromJson(
                                        result.data["Order"])
                                    : MedicalOrderModel.fromJson(
                                        result.data["Order"]);
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
