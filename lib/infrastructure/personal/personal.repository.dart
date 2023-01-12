// ignore_for_file: avoid_print

import 'dart:io';

import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/personal/contracts/i.personal.repository.dart';
import 'package:bolisati/domain/api/personal/model/personaloccupation.dart';
import 'package:bolisati/domain/api/personal/model/personaloffermodel.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/api/personal/model/personalofferdonemodel.dart';

class PersonalRepository implements IPersonalRepository {
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
          "https://bolisati.bitsblend.org/api/V1/PersonalAccident/AttachFile?api_token=$apitoken",
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
  //done

  @override
  Future<Either<ApiFailures, dynamic>> getOffers(
      {required String? token,
      required int? age,
      required int? personaltypeid,
      required int? amount}) async {
    var dio = Dio();
    dio.options.headers = {'Content-Type': "application/json"};
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
        "https://bolisati.bitsblend.org/api/V1/PersonalAccident/GetOffers?age=$age&personal_accident_type_id=$personaltypeid&insurance_amount=$amount&api_token=$token",
      );
      print(result.data);

      Map<String, dynamic> map = result.data;

      List<dynamic> data = map["Offers"];

      List<PersonalOfferModel> offers =
          data.map((e) => PersonalOfferModel.fromJson(e)).toList();
      print(offers);
      if (result.data["AZSVR"] == "SUCCESS") {
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

//done

  @override
  Future<Either<ApiFailures, dynamic>> placeOrder(
      {required PersonalOfferDoneModel model,
      required String? token,
      required String? addons}) async {
    var dio = Dio();
    dio.options.headers = {"Content-Type": "application/json"};

    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          """https://bolisati.bitsblend.org/api/V1/PersonalAccident/PlaceOrder?personal_accident_insurance_id=${int.parse(model.personal_accident_insurance_id!)}&personal_accident_occupation_id=${int.parse(model.personal_accident_occupation_id!)}&name=${model.name}&birthdate=${model.birthdate}&start_date=${model.start_date}&end_date=${model.end_date}&insurance_amount=${model.insurance_amount}$addons&api_token=$token""");

      if (result.data["AZSVR"] == "SUCCESS") {
        PersonalOfferDoneModel model =
            PersonalOfferDoneModel.fromJson(result.data["OrderDetails"]);
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

//done
  @override
  Future<Either<ApiFailures, dynamic>> getoccupation({String? apitoken}) {
    {
      var dio = Dio();
      final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
        final result = await dio.get(
            "https://bolisati.bitsblend.org/api/V1/PersonalAccident/GetOccupations?api_token=$apitoken");
        // print(result.data["Cars"] as List<CarModel>);
        print(result.data);
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["Occupations"];
        List<PersonalOccupationModel> cars =
            data.map((e) => PersonalOccupationModel.fromJson(e)).toList();
        // List<CarModel> cars = result.data["Cars"];
        return cars;
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
}
