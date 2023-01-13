// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'insuranceoffer.freezed.dart';
part 'insuranceoffer.g.dart';

@freezed
class InsuranceOfferModel with _$InsuranceOfferModel {
  const factory InsuranceOfferModel({
    int? id,
    int? company_id,
    num? price,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _InsuranceOfferModel;
  factory InsuranceOfferModel.fromJson(Map<String, dynamic> json) =>
      _$InsuranceOfferModelFromJson(json);
}
