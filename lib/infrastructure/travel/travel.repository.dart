import 'dart:io';

import 'package:bolisati/domain/api/failures/api.failures.dart';

import 'package:bolisati/domain/api/orders/travelorders/region/regionmodel.dart';
import 'package:bolisati/domain/api/travel/model/travelmodel.dart';
import 'package:bolisati/domain/api/travel/model/travelorderdonemodel.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/api/orders/travelorders/travelordermodel.dart';
import '../../domain/api/travel/contracts/i.travel.repository.dart';

class TravelRepository implements ITravelRepository {
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
          "https://bolisati.bitsblend.org/api/V1/Travel/AttachFile?api_token=$apitoken",
          data: formData);
      print(result.realUri);
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
      {String? token, int? regionid, int? period, int? age}) async {
    var dio = Dio();
    dio.options.headers = {'Content-Type': "application/json"};
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
        "https://bolisati.bitsblend.org/api/V1/Travel/GetOffers?travel_region_id=$regionid&period_in_days=$period&age=$age&api_token=$token",
      );
      print(result.data);

      Map<String, dynamic> map = result.data;

      List<dynamic> data = map["Offers"];

      List<TravelOffersModel> offers =
          data.map((e) => TravelOffersModel.fromJson(e)).toList();
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
  Future<Either<ApiFailures, dynamic>> placeOrder({
    required TravelOrderModel travelOrder,
    required String? token,
    required String? addons
  }) async {
    var dio = Dio();
    dio.options.headers = {"Content-Type": "application/json"};

    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
          """https://bolisati.bitsblend.org/api/V1/Travel/PlaceOrder?travel_insurance_id=${travelOrder.travel_insurance_id}&name=${travelOrder.name}&destination=${travelOrder.destination}&birthdate=${travelOrder.birthdate}&start_date=${travelOrder.start_date}&end_date=${travelOrder.end_date}$addons&api_token=$token""");
      print(result.realUri);
      if (result.data["AZSVR"] == "SUCCESS") {
        //change this
        TravelOrderDoneModel model =
            TravelOrderDoneModel.fromJson(result.data["OrderDetails"]);
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

//done
  @override
  Future<Either<ApiFailures, dynamic>> getregions({String? apitoken}) {
    {
      var dio = Dio();
      final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
        final result = await dio.get(
            "https://bolisati.bitsblend.org/api/V1/Travel/GetRegions?api_token=$apitoken");
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["Regions"];
        List<RegionModel> cars =
            data.map((e) => RegionModel.fromJson(e)).toList();
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
