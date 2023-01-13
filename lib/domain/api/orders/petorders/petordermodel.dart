// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bolisati/domain/api/gender/gendermodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../company/model/companymodel.dart';
import '../../files/filesmodel.dart';
import '../../status/statusmodel.dart';
import '../../user/model/usermodel.dart';
import '../orderaddones/orderaddons.dart';
import '../retirementorders/type/rettypemodel.dart';
part 'petordermodel.freezed.dart';
part 'petordermodel.g.dart';

@freezed
class PetOrderModel with _$PetOrderModel {
  const factory PetOrderModel({
    int? id,
    int? customer_user_id,
    int? company_id,
    int? pet_insurance_id,
    int? pet_type_id,
    int? gender_id,
    int? pet_order_status_id,
    String? pet_type,
    GenderModel? gender,
    String? name,
    int? country_id,
    String? birthdate,
    int? age,
    String? start_date,
    String? end_date,
    num? total,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    UserModel? customer,
    RetTypeModel? type,
    CompanyModel? company,
    List<OrderAddonsModel>? addons,
    StatusModel? status,
    List<FilesModel>? files,
  }) = _PetOrderModel;
  factory PetOrderModel.fromJson(Map<String, dynamic> json) =>
      _$PetOrderModelFromJson(json);
}
