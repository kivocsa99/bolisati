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
    int? company_id,
    int? age_form,
    int? age_to,
    int? medical_insurance_type_id,
    int? gender_id,
    int? price,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<AddonsModel>? addons,
    CompanyModel? company,
  }) = _RetirmentDoneModel;
  factory RetirmentDoneModel.fromJson(Map<String, dynamic> json) =>
      _$RetirmentDoneModelFromJson(json);
}
