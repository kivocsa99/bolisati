// ignore_for_file: avoid_print

import 'dart:io';

import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/orders/retirementorders/retirementordermodel.dart';
import 'package:bolisati/domain/api/retirment/model/retirmentdonemodel.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/api/retirment/contracts/i.retirment.repository.dart';

class RetirmentRepository implements IRetirmentRepository {
  @override
  Future<Either<ApiFailures, dynamic>> attachFile(
      {required File file,
      required int orderid,
      required String apitoken}) async {
    var dio = Dio();
    dio.options.headers = {'Content-Type': "application/json"};
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      FormData formData = FormData.fromMap({
        "order_id": orderid,
        "file": await MultipartFile.fromFile(file.path, filename: file.path),
      });
      final result = await dio.post(
          "https://bolisati.bitsblend.org/api/V1/Retirement/AttachFile?api_token=$apitoken",
          data: formData);

      if (result.data["AZSVR"] == "SUCCESS") {
        return result.data["FileURL"];
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
  //done

//done

  @override
  Future<Either<ApiFailures, dynamic>> placeOrder({
    required RetirementOrderModel retirementOrderModel,
    required String? token,
  }) async {
    var dio = Dio();
    dio.options.headers = {"Content-Type": "application/json"};

    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      int type =
          retirementOrderModel.retirement_type_id == "Monthly Fee" ? 1 : 2;
      String fee = retirementOrderModel.retirement_type_id == "Monthly Fee"
          ? "monthly_fee"
          : "full_fee";
      print(type);
      print(fee);

      final result = await dio.get(
          """https://bolisati.bitsblend.org/api/V1/Retirement/PlaceOrder?retirement_type_id=$type&name=${retirementOrderModel.name}&birthdate=${retirementOrderModel.birthdate}&$fee=${retirementOrderModel.monthly_fee}&retirement_age=${retirementOrderModel.retirement_age}&api_token=$token""");
      print(result.realUri);
      if (result.data["AZSVR"] == "SUCCESS") {
        RetirmentDoneModel model =
            RetirmentDoneModel.fromJson(result.data["OrderDetails"]);
        return model;
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
