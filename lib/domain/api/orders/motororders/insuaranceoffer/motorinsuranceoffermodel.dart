// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'motorinsuranceoffermodel.freezed.dart';
part 'motorinsuranceoffermodel.g.dart';

@freezed
class MotorInsuranceOfferModel with _$MotorInsuranceOfferModel {
  const factory MotorInsuranceOfferModel({
    int? id,
    int? company_id,
    int? price_from,
    int? price_to,
    int? fixed,
    int? precentage,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _MotorInsuranceOfferModel;
  factory MotorInsuranceOfferModel.fromJson(Map<String, dynamic> json) =>
      _$MotorInsuranceOfferModelFromJson(json);
}
