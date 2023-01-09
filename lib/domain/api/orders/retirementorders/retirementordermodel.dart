// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../orderaddones/orderaddons.dart';
part 'retirementordermodel.freezed.dart';
part 'retirementordermodel.g.dart';

@freezed
class RetirementOrderModel with _$RetirementOrderModel {
  const factory RetirementOrderModel({ int? id,
    int? customer_user_id,
    int? company_id,
    String? retirement_type_id,
    int? retirement_order_status_id,
    int? retirement_type,
    int? age,
    int? birthdate,
    int? retirement_age,
    int? monthly_fee,
    int? fixed_fee,
    String? name,
    int? total_without_addons,
    int? total,
    List<OrderAddonsModel>? addons,
    String? created_at,
    String? updated_at,
    String? deleted_at,}) = _RetirementOrderModel;
  factory RetirementOrderModel.fromJson(Map<String, dynamic> json) =>
      _$RetirementOrderModelFromJson(json);
}
