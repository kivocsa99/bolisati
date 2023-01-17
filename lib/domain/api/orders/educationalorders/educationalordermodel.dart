// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../company/model/companymodel.dart';
import '../../files/filesmodel.dart';
import '../../status/statusmodel.dart';
import '../../user/model/usermodel.dart';
import '../orderaddones/orderaddons.dart';
import '../retirementorders/type/rettypemodel.dart';
import 'child/childmodel.dart';
part 'educationalordermodel.freezed.dart';
part 'educationalordermodel.g.dart';

@freezed
class EducationalOrderModel with _$EducationalOrderModel {
  const factory EducationalOrderModel({
    int? id,
    int? customer_user_id,
    int? company_id,
    int? educational_type_id,
    int? personal_accident_type_id,
    int? educational_order_status_id,
    String? educational_type,
    String? name,
    String? end_date,
    String? birthdate,
    int? age,
    int? monthly_fee,
    int? university_fee,
    num? total,
    num? rate,
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
    List<ChildModel>? kids,
  }) = _EducationalOrderModel;
  factory EducationalOrderModel.fromJson(Map<String, dynamic> json) =>
      _$EducationalOrderModelFromJson(json);
}
