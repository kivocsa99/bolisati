import 'dart:io';

import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/orders/retirementorders/retirementordermodel.dart';
import 'package:fpdart/fpdart.dart';

//ask ali about data type
abstract class IRetirmentRepository {
  Future<Either<ApiFailures, dynamic>> placeOrder(
      {required String token,
      required RetirementOrderModel retirementOrderModel});
  Future<Either<ApiFailures, dynamic>> attachFile(
      {required File file, required int orderid, required String apitoken});
}
