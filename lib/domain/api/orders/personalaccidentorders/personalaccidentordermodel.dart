// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../company/model/companymodel.dart';
import '../../files/filesmodel.dart';
import '../../status/statusmodel.dart';
import '../../user/model/usermodel.dart';
import '../orderaddones/orderaddons.dart';
import '../retirementorders/type/rettypemodel.dart';
part 'personalaccidentordermodel.freezed.dart';
part 'personalaccidentordermodel.g.dart';

@freezed
class PersonalAccidentOrderModel with _$PersonalAccidentOrderModel {
  const factory PersonalAccidentOrderModel({
    int? id,
    int? customer_user_id,
    int? company_id,
    int? personal_accident_insurance_id,
    int? personal_accident_type_id,
    int? personal_accident_occupation_id,
    int? personal_accident_order_status_id,
    String? age_from,
    String? age_to,
    String? personal_accident_occupation,
    String? personal_accident_type,
    String? rate,
    String? name,
    String? birthdate,
    int? age,
    String? start_date,
    String? end_date,
    String? insurance_amount,
    num? total,
    num? total_without_addons,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    UserModel? customer,
    CompanyModel? company,
    RetTypeModel? type,
    List<OrderAddonsModel>? addons,
    StatusModel? status,
    List<FilesModel>? files,
  }) = _PersonalAccidentOrderModel;
  factory PersonalAccidentOrderModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalAccidentOrderModelFromJson(json);
}
