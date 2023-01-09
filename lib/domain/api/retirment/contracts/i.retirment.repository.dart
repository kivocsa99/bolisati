import 'dart:io';

import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/orders/medicalorders/medicalordermodel.dart';
import 'package:bolisati/domain/api/orders/retirementorders/retirementordermodel.dart';
import 'package:fpdart/fpdart.dart';

//ask ali about data type
abstract class IRetirmentRepository {
  Future<Either<ApiFailures, dynamic>> placeOrder(
      {String? token, String? addons, RetirementOrderModel? medicalOrderModel});
  Future<Either<ApiFailures, dynamic>> attachFile(
      {File? file, int? orderid, String? apitoken});
}
