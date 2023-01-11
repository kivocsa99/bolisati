// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';
import '../../company/model/companymodel.dart';

part 'retirmentdonemodel.freezed.dart';
part 'retirmentdonemodel.g.dart';

@freezed
class RetirmentDoneModel with _$RetirmentDoneModel {
  const factory RetirmentDoneModel({
    int? id,
    int? customer_user_id,
    int? company_id,
    String? aretirement_type_idge_to,
    int? retirement_order_status_id,
    String? retirement_type,
    String? name,
    String? birthdate,
    int? age,
    String? retirement_age,
    String? monthly_fee,
    int? fixed_fee,
    int? total,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<AddonsModel>? addons,
    CompanyModel? company,
  }) = _RetirmentDoneModel;
  factory RetirmentDoneModel.fromJson(Map<String, dynamic> json) =>
      _$RetirmentDoneModelFromJson(json);
}
