// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'travelinsuranceoffermodel.freezed.dart';
part 'travelinsuranceoffermodel.g.dart';

@freezed
class TravelInsuranceOfferModel with _$TravelInsuranceOfferModel {
  const factory TravelInsuranceOfferModel({
    int? id,
    int? company_id,
    int? travel_region_id,
    int? period_from,
    int? period_to,
    int? age_from,
    int? age_to,
    num? price,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _TravelInsuranceOfferModel;
  factory TravelInsuranceOfferModel.fromJson(Map<String, dynamic> json) =>
      _$TravelInsuranceOfferModelFromJson(json);
}
