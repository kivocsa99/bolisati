// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'personalinsuranceoffermodel.freezed.dart';
part 'personalinsuranceoffermodel.g.dart';

@freezed
class PersonalInsuranceOfferModel with _$PersonalInsuranceOfferModel {
  const factory PersonalInsuranceOfferModel({
    int? id,
    int? company_id,
    num? age_from,
    num? age_to,
    num? personal_accident_type_id,
    num? rate,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _PersonalInsuranceOfferModel;
  factory PersonalInsuranceOfferModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalInsuranceOfferModelFromJson(json);
}
