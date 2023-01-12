// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicalinsuranceoffermodel.freezed.dart';
part 'medicalinsuranceoffermodel.g.dart';

@freezed
class MedicalInsuranceOfferModel with _$MedicalInsuranceOfferModel {
  const factory MedicalInsuranceOfferModel({
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
  }) = _MedicalInsuranceOfferModel;
  factory MedicalInsuranceOfferModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalInsuranceOfferModelFromJson(json);
}
