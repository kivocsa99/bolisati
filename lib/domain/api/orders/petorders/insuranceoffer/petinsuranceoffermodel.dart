// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'petinsuranceoffermodel.freezed.dart';
part 'petinsuranceoffermodel.g.dart';

@freezed
class PetInsuranceOfferModel with _$PetInsuranceOfferModel {
  const factory PetInsuranceOfferModel({
    int? id,
    int? company_id,
    num? price,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _PetInsuranceOfferModel;
  factory PetInsuranceOfferModel.fromJson(Map<String, dynamic> json) =>
      _$PetInsuranceOfferModelFromJson(json);
}
