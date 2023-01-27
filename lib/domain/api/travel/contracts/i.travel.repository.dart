import 'dart:io';

import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/orders/travelorders/travelordermodel.dart';
import 'package:fpdart/fpdart.dart';

abstract class ITravelRepository {
  Future<Either<ApiFailures, dynamic>> getOffers(
      {String? token, int? regionid, int? period, int? age});
  Future<Either<ApiFailures, dynamic>> placeOrder({
    required String? addons,
    required TravelOrderModel travelOrder,
    required String? token,
  });
  Future<Either<ApiFailures, dynamic>> attachFile(
      {required File file, required int orderid, required String apitoken});
  Future<Either<ApiFailures, dynamic>> getregions({String? apitoken});
  Future<Either<ApiFailures, dynamic>> getcity({String? apitoken, String? id});
}
