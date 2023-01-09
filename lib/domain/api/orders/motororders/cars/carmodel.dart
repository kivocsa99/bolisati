// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bolisati/domain/api/addons/model/addonsmodel.dart';
import 'package:bolisati/domain/api/company/model/companymodel.dart';
import 'package:bolisati/domain/api/files/filesmodel.dart';
import 'package:bolisati/domain/api/orders/motororders/insuaranceoffer/motorinsuranceoffermodel.dart';
import 'package:bolisati/domain/api/orders/motororders/viechle/vehiclemakemodel.dart';
import 'package:bolisati/domain/api/orders/motororders/viechle/vehiclemodelmodel.dart';
import 'package:bolisati/domain/api/orders/orderaddones/orderaddons.dart';
import 'package:bolisati/domain/api/status/statusmodel.dart';
import 'package:bolisati/domain/api/user/model/usermodel.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'carsmodel.dart';
part 'carmodel.freezed.dart';
part 'carmodel.g.dart';

@freezed
class CarModel with _$CarModel {
  const factory CarModel({
    int? id,
    String? name,
    String? code,
    String? logo,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<CarsModel?>? models,
  }) = _CarModel;
  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);
}
