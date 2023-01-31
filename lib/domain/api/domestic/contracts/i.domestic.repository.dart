import 'dart:io';

import 'package:bolisati/domain/api/domestic/model/domesticdonemodel.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/orders/domesticworkerorders/domesticworkersmodel.dart';
import 'package:fpdart/fpdart.dart';

abstract class IDomesticRepository {
  Future<Either<ApiFailures, dynamic>> getOffers({String? token});
  Future<Either<ApiFailures, dynamic>> placeOrder(
      {required String token,
      required String? addons,
      required DomesticWorkersOrderModel model});
  Future<Either<ApiFailures, dynamic>> attachFile(
      {File? file, int? orderid, String? apitoken});
}
