// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bolisati/domain/api/company/model/companymodel.dart';
import 'package:bolisati/domain/api/orders/retirementorders/type/rettypemodel.dart';
import 'package:bolisati/domain/api/user/model/usermodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../files/filesmodel.dart';
import '../../status/statusmodel.dart';
import '../orderaddones/orderaddons.dart';
part 'retirementordermodel.freezed.dart';
part 'retirementordermodel.g.dart';

@freezed
class RetirementOrderModel with _$RetirementOrderModel {
  const factory RetirementOrderModel({
    int? id,
    int? customer_user_id,
    int? company_id,
    int? retirement_type_id,
    int? retirement_order_status_id,
    String? retirement_type,
    int? age,
    String? birthdate,
    int? retirement_age,
    int? monthly_fee,
    String? end_date,
    int? fixed_fee,
    String? name,
    num? total_without_addons,
    num? total,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    UserModel? customer,
    CompanyModel? company,
    RetTypeModel? type,
    List<OrderAddonsModel>? addons,
    StatusModel? status,
    List<FilesModel>? files,
  }) = _RetirementOrderModel;
  factory RetirementOrderModel.fromJson(Map<String, dynamic> json) =>
      _$RetirementOrderModelFromJson(json);
}
