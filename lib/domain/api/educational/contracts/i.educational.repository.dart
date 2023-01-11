import 'dart:io';

import 'package:bolisati/domain/api/educational/models/educationaloffermodel.dart';
import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:fpdart/fpdart.dart';

import '../models/ducationaldoneoffermodel.dart';

abstract class IEducationalRepository {
  Future<Either<ApiFailures, dynamic>> addchild(
      {required String token, required EducationalChildDoneModel model});
  Future<Either<ApiFailures, dynamic>> placeOrder(
      {required String token,
      required String? addons,
      required EducationalDoneModel model});
  Future<Either<ApiFailures, dynamic>> attachFile(
      {File? file, int? orderid, String? apitoken});
}
