// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bolisati/domain/api/company/model/companymodel.dart';
import 'package:bolisati/domain/api/files/filesmodel.dart';
import 'package:bolisati/domain/api/orders/motororders/insuaranceoffer/motorinsuranceoffermodel.dart';
import 'package:bolisati/domain/api/orders/motororders/viechle/vehiclemakemodel.dart';
import 'package:bolisati/domain/api/orders/motororders/viechle/vehiclemodelmodel.dart';
import 'package:bolisati/domain/api/orders/orderaddones/orderaddons.dart';
import 'package:bolisati/domain/api/status/statusmodel.dart';
import 'package:bolisati/domain/api/user/model/usermodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'motorordermodel.freezed.dart';
part 'motorordermodel.g.dart';

@freezed
class MotorOrderModel with _$MotorOrderModel {
  const factory MotorOrderModel({
    int? id,
    int? customer_user_id,
    int? company_id,
    int? motor_insurance_id,
    int? vehicle_make_id,
    int? vehicle_model_id,
    num? price,
    num? price_from,
    num? price_to,
    int? fixed,
    num? percentage,
    VehicleMakeModel? vehicle_make,
    VehicleModelModel? vehicle_model,
    String? name,
    String? car_make,
    String? car_model,
    int? estimated_car_price,
    int? previous_accidents,
    String? start_date,
    String? end_date,
    String? fuel_type,
    String? car_year,
    num? total,
    UserModel? customer,
    CompanyModel? company,
    MotorInsuranceOfferModel? insurance_offer,
    StatusModel? status,
    List<OrderAddonsModel>? addons,
    List<FilesModel>? files,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _MotorOrderModel;
  factory MotorOrderModel.fromJson(Map<String, dynamic> json) =>
      _$MotorOrderModelFromJson(json);
}
