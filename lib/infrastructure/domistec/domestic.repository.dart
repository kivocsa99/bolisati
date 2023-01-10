import 'dart:io';

import 'package:bolisati/domain/api/domestic/contracts/i.domestic.repository.dart';
import 'package:bolisati/domain/api/domestic/model/domesticdonemodel.dart';
import 'package:bolisati/domain/api/domestic/model/domesticoffermodel.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class DomesticRepository implements IDomesticRepository {
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
          "https://bolisati.bitsblend.org/api/V1/DomesticWorker/AttachFile?api_token=$apitoken",
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
  Future<Either<ApiFailures, dynamic>> getOffers({String? token}) async {
    var dio = Dio();
    dio.options.headers = {'Content-Type': "application/json"};
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
        "https://bolisati.bitsblend.org/api/V1/DomesticWorker/GetOffers?api_token=$token",
      );

      if (result.data["AZSVR"] == "SUCCESS") {
        Map<String, dynamic> map = result.data;

        List<dynamic> data = map["Offers"];

        List<DomesticOfferModel> offers =
            data.map((e) => DomesticOfferModel.fromJson(e)).toList();
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
      {required String token, required DomesticOfferModel model}) async {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          "https://bolisati.bitsblend.org/api/V1/DomesticWorker/PlaceOrder?domestic_worker_insurance_id=${model.price}&name=AliAPI&start_date=2022-12-18 10:10:12&end_date=2023-12-18 10:10:12&national_id_number=3456789&worker_name=Saad Khaled&api_token=$token");
      print(result.realUri);
      if (result.data["AZSVR"] == "SUCCESS") {
        DomesticDoneModel model =
            DomesticDoneModel.fromJson(result.data["OrderDetails"]);
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
