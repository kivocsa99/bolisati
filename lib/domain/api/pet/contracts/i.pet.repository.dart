import 'dart:io';

import 'package:bolisati/domain/api/failures/api.failures.dart';
import 'package:bolisati/domain/api/orders/petorders/petordermodel.dart';
import 'package:bolisati/domain/api/pet/model/petorderdonemodel.dart';
import 'package:fpdart/fpdart.dart';

//ask ali about data type
abstract class IPetRepository {
  Future<Either<ApiFailures, dynamic>> getOffers({String? token});
  //place order
  Future<Either<ApiFailures, dynamic>> placeOrder({
    required String? addons,
    required PetOrderModel model,
    required String? token,
  });
  Future<Either<ApiFailures, dynamic>> attachFile(
      {required File file, required int orderid, required String apitoken});
  Future<Either<ApiFailures, dynamic>> getcountries({String? apitoken});
}
