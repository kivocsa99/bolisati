// ignore_for_file: avoid_print

import 'dart:io';

import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/orders/petorders/petordermodel.dart';
import 'package:bolisati/domain/api/pet/contracts/i.pet.repository.dart';
import 'package:bolisati/domain/api/pet/model/petcountrymodel.dart';
import 'package:bolisati/domain/api/pet/model/petoffermodel.dart';
import 'package:bolisati/domain/api/pet/model/petorderdonemodel.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class PetRepository implements IPetRepository {
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
          "https://bolisati.bitsblend.org/api/V1/Pet/AttachFile?api_token=$apitoken",
          data: formData);
      if (result.data["AZSVR"] == "SUCCESS") {
        return result.data["FileURL"];
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
  //done

  @override
  Future<Either<ApiFailures, dynamic>> getOffers(
      {String? token, int? vehiclemodelid, int? estimatedcarprice}) async {
    var dio = Dio();
    dio.options.headers = {'Content-Type': "application/json"};
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
        "https://bolisati.bitsblend.org/api/V1/Pet/GetOffers?api_token=$token",
      );
      print(result.data);

      Map<String, dynamic> map = result.data;

      List<dynamic> data = map["Offers"];

      List<PetOffersModel> offers =
          data.map((e) => PetOffersModel.fromJson(e)).toList();
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
      {required PetOrderModel model,
      required String? token,
      required String? addons}) async {
    var dio = Dio();
    dio.options.headers = {"Content-Type": "application/json"};

    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          """https://bolisati.bitsblend.org/api/V1/Pet/PlaceOrder?pet_insurance_id=${model.pet_insurance_id!}&pet_type_id=${model.pet_type_id!}&name=${model.name}&birthdate=${model.birthdate}&start_date=${model.start_date}&end_date=${model.end_date}&gender_id=${model.gender_id!}&country_id=${model.country_id!}$addons&api_token=$token""");

      if (result.data["AZSVR"] == "SUCCESS") {
        PetOrderDoneModel model =
            PetOrderDoneModel.fromJson(result.data["OrderDetails"]);
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
  Future<Either<ApiFailures, dynamic>> getcountries({String? apitoken}) {
    {
      var dio = Dio();
      final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
        final result = await dio.get(
            "https://bolisati.bitsblend.org/api/V1/Pet/GetCountries?api_token=$apitoken");
        print(result.realUri);
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["Countries"];
        List<PetCountryModel> cars =
            data.map((e) => PetCountryModel.fromJson(e)).toList();
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
