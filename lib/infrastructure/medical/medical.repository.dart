import 'dart:convert';
import 'dart:io';

import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/medical/contracts/i.medical.repository.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class MedicalRepository implements IMedicalRepository {
  @override
  Future<Either<ApiFailures, dynamic>> attachFile(
      {List<File>? file, int? orderid, String? apitoken}) async {
    var dio = Dio();
    dio.options.headers = {'Content-Type': "application/json"};
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.post(
          "https://bolisati.bitsblend.org/api/V1/Medical/AttachFile?api_token=$apitoken",
          data: jsonEncode({
            "order_id": orderid,
            "file": file,
          }));

      if (result.data["AZSVR"] == "SUCCESS") {
        return result.data["api_token"];
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
        return result.data["OrderDetails"];
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

//place order check with ali
  @override
  Future<Either<ApiFailures, dynamic>> placeOrder({
    String? token,
    int? insuranceid,
    int? maritalstatus,
    String? name,
    String? birthday,
    String? startdate,
    String? enddate,
  }) async {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
        "https://bolisati.bitsblend.org/api/V1/Medical/PlaceOrder?medical_insurance_id=$insuranceid&marital_status_id=$maritalstatus&name=$name&birthdate=$birthday&start_date=$startdate&end_date=$enddate?api_token=$token",
      );

      if (result.data["AZSVR"] == "SUCCESS") {
        return result.data["api_token"];
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
