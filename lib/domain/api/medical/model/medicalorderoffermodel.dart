// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bolisati/domain/api/gender/gendermodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';

part 'medicalorderoffermodel.freezed.dart';
part 'medicalorderoffermodel.g.dart';

@freezed
class MedicalOrderOfferModel with _$MedicalOrderOfferModel {
  const factory MedicalOrderOfferModel({
    int? customer_user_id,
    int? company_id,
    int? medical_insurance_id,
    int? marital_status_id,
    int? medical_insurance_type_id,
    int? gender_id,
    int? age_form,
    int? age_to,
    String? medical_insurance_type,
    GenderModel? gender,
    num? price,
    String? name,
    String? birth_date,
    int? age,
    String? start_date,
    String? end_date,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    int? id,
    List<AddonsModel>? addons,
  }) = _MedicalOrderOfferModel;
  factory MedicalOrderOfferModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalOrderOfferModelFromJson(json);
}
