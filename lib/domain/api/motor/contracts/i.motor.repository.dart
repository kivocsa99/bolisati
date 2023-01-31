import 'dart:io';

import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/orders/motororders/motorordermodel.dart';
import 'package:fpdart/fpdart.dart';

//ask ali about data type
abstract class IMotorRepository {
  Future<Either<ApiFailures, dynamic>> getOffers(
      {String? token, int? vehiclemodelid, int? estimatedcarprice});
  Future<Either<ApiFailures, dynamic>> setstatus(
      {String? token, String? status, String? orderid});
  Future<Either<ApiFailures, dynamic>> placeOrder(
      {required MotorOrderModel motororder,
      required String? token,
      required String? addons});
  Future<Either<ApiFailures, dynamic>> attachFile(
      {required File file, required int orderid, required String apitoken});
  Future<Either<ApiFailures, dynamic>> getcars({String? apitoken});
}
