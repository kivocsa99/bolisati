import 'dart:io';

import 'package:bolisati/domain/api/educational/contracts/i.educational.repository.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/api/educational/models/ducationaldoneoffermodel.dart';
import '../../domain/api/educational/models/educationaloffermodel.dart';

class EducationalRepository implements IEducationalRepository {
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
          "https://bolisati.bitsblend.org/api/V1/Educational/AttachFile?api_token=$apitoken",
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

  @override
  Future<Either<ApiFailures, dynamic>> addchild(
      {required String token, required EducationalChildDoneModel model}) async {
    var dio = Dio();
    dio.options.headers = {'Content-Type': "application/json"};
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      final result = await dio.get(
        "https://bolisati.bitsblend.org/api/V1/Educational/AddChild?educational_order_id=${int.parse(model.educational_order_id!)}&name=${model.name}&birthdate=${model.birthdate}&national_id_number=${int.parse(model.national_id_number!)}&gender_id=${model.gender_id}&api_token=$token",
      );
      print(result.realUri);
      if (result.data["AZSVR"] == "SUCCESS") {
        EducationalChildDoneModel model =
            EducationalChildDoneModel.fromJson(result.data["ChildDetails"]);
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

//place order check with ali
  @override
  Future<Either<ApiFailures, dynamic>> placeOrder(
      {required String token,
      required String? addons,
      required EducationalDoneModel model}) async {
    var dio = Dio();
    final result = TaskEither<ApiFailures, dynamic>.tryCatch(() async {
      int type = model.educational_type_id == "Monthly Fee" ? 1 : 2;
      String fee = type == 1 ? "monthly_fee" : "university_fee";
      final result = await dio.get(
          "https://bolisati.bitsblend.org/api/V1/Educational/PlaceOrder?educational_type_id=$type&name=${model.name}&birthdate=${model.birthdate}&$fee=${int.parse(model.monthly_fee!)}&api_token=$token");
      if (result.data["AZSVR"] == "SUCCESS") {
        EducationalDoneModel model =
            EducationalDoneModel.fromJson(result.data["OrderDetails"]);
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
