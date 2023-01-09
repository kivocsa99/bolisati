import 'dart:io';

import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/medical/contracts/i.medical.repository.dart';
import 'package:bolisati/domain/api/medical/model/medicalmodel.dart';
import 'package:bolisati/domain/api/medical/model/medicalorderdone.dart';
import 'package:bolisati/domain/api/orders/medicalorders/medicalordermodel.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class MedicalRepository implements IMedicalRepository {
  @override
  Future<Either<ApiFailures, dynamic>> attachFile(
      {File? file, int? orderid, String? apitoken}) async {
    var dio = Dio();
    dio.options.headers = {'Content-Type': "application/json"};
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      FormData formData = FormData.fromMap({
        "order_id": orderid,
        "file": await MultipartFile.fromFile(file!.path, filename: file.path),
      });
      final result = await dio.post(
          "https://bolisati.bitsblend.org/api/V1/Medical/AttachFile?api_token=$apitoken",
          data: formData);
      print(result.data);
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

  @override
  Future<Either<ApiFailures, dynamic>> getOffers(
      {String? token, int? age, int? genderid, int? insuranceType}) async {
    var dio = Dio();
    dio.options.headers = {'Content-Type': "application/json"};
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
        "https://bolisati.bitsblend.org/api/V1/Medical/GetOffers?age=$age&gender_id=$genderid&medical_insurance_type_id=$insuranceType&api_token=$token",
      );

      if (result.data["AZSVR"] == "SUCCESS") {
        Map<String, dynamic> map = result.data;

        List<dynamic> data = map["Offers"];

        List<MedicalOffersModel> offers =
            data.map((e) => MedicalOffersModel.fromJson(e)).toList();
        return offers;
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

//place order check with ali
  @override
  Future<Either<ApiFailures, dynamic>> placeOrder(
      {String? token,
      String? addons,
      MedicalOrderModel? medicalOrderModel}) async {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          "https://bolisati.bitsblend.org/api/V1/Medical/PlaceOrder?medical_insurance_id=${medicalOrderModel!.medical_insurance_id}&marital_status_id=${medicalOrderModel.marital_status_id}&name=${medicalOrderModel.name}&birthdate=${medicalOrderModel.birthdate}&start_date=${medicalOrderModel.start_date}&end_date=${medicalOrderModel.end_date}$addons&api_token=$token");

      if (result.data["AZSVR"] == "SUCCESS") {
        MedicalOrderDoneModel model =
            MedicalOrderDoneModel.fromJson(result.data["OrderDetails"]);
        return model;
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
