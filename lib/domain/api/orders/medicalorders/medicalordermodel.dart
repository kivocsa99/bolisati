// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bolisati/domain/api/company/model/companymodel.dart';
import 'package:bolisati/domain/api/files/filesmodel.dart';
import 'package:bolisati/domain/api/gender/gendermodel.dart';
import 'package:bolisati/domain/api/maritalstatus/maritalstatusmodel.dart';
import 'package:bolisati/domain/api/orders/medicalorders/insuranceoffer/medicalinsuranceoffermodel.dart';
import 'package:bolisati/domain/api/orders/medicalorders/type/medicaltypemodel.dart';
import 'package:bolisati/domain/api/orders/orderaddones/orderaddons.dart';
import 'package:bolisati/domain/api/status/statusmodel.dart';
import 'package:bolisati/domain/api/user/model/usermodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicalordermodel.freezed.dart';
part 'medicalordermodel.g.dart';

@freezed
class MedicalOrderModel with _$MedicalOrderModel {
  const factory MedicalOrderModel({
    int? id,
    int? customer_user_id,
    int? company_id,
    int? medical_insurance_id,
    int? marital_status_id,
    int? medical_insurance_type_id,
    int? gender_id,
    int? medical_order_status_id,
    int? age_form,
    int? age_to,
    String? medical_insurance_type,
    GenderModel? gender,
    num? price,
    String? name,
    String? birthdate,
    int? age,
    String? start_date,
    String? end_date,
    num? total,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    UserModel? customer,
    CompanyModel? company,
    MedicalInsuranceOfferModel? insurance_offer,
    StatusModel? status,
    List<OrderAddonsModel>? addons,
    List<FilesModel>? files,
    MaritalStatusModel? marital_status,
    MedicalTypeModel? type,
  }) = _MedicalOrderModel;
  factory MedicalOrderModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalOrderModelFromJson(json);
}
