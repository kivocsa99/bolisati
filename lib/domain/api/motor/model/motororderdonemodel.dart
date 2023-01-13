// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

//needs work
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';

part 'motororderdonemodel.freezed.dart';
part 'motororderdonemodel.g.dart';

@freezed
class MotorOrderDoneModel with _$MotorOrderDoneModel {
  const factory MotorOrderDoneModel({
    int? id,
    int? company_id,
    num? price_from,
    num? price_to,
    int? fixed,
    num? percentage,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<AddonsModel>? addons,
    int? customer_user_id,
    String? motor_insurance_id,
    int? vehicle_make_id,
    String? vehicle_model_id,
    int? motor_order_status_id,
    String? car_make,
    String? car_model,
    String? name,
    String? estimated_car_price,
    String? previous_accidents,
    String? start_date,
    String? end_date,
    String? fuel_type,
    String? car_year,
    num? total,
  }) = _MotorOrderDoneModel;
  factory MotorOrderDoneModel.fromJson(Map<String, dynamic> json) =>
      _$MotorOrderDoneModelFromJson(json);
}
