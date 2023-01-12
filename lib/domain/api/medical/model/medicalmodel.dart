// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';
import '../../company/model/companymodel.dart';

part 'medicalmodel.freezed.dart';
part 'medicalmodel.g.dart';

@freezed
class MedicalOffersModel with _$MedicalOffersModel {
  const factory MedicalOffersModel({
    int? id,
    int? company_id,
    int? age_form,
    int? age_to,
    int? medical_insurance_type_id,
    int? gender_id,
    num? price,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<AddonsModel>? addons,
    CompanyModel? company,
  }) = _MedicalOffersModel;
  factory MedicalOffersModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalOffersModelFromJson(json);
}
