import 'dart:io';

import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';

//ask ali about data type
abstract class IMedicalRepository {
  Future<Either<ApiFailures, dynamic>> getOffers(
      {String? token, int? age, int? genderid, int? insuranceType});
  //place order
  Future<Either<ApiFailures, dynamic>> placeOrder({
    String? token,
    int? insuranceid,
    int? maritalstatus,
    String? name,
    String? birthday,
    String? startdate,
    String? enddate,
  });
  Future<Either<ApiFailures, dynamic>> attachFile(
      {List<File>? file, int? orderid, String? apitoken});
}
