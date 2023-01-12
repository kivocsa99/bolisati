// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';
import '../../company/model/companymodel.dart';

part 'domesticoffermodel.freezed.dart';
part 'domesticoffermodel.g.dart';

@freezed
class DomesticOfferModel with _$DomesticOfferModel {
  const factory DomesticOfferModel({
    int? id,
    int? company_id,
    num? price,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<AddonsModel>? addons,
    CompanyModel? company,
  }) = _DomesticOfferModel;
  factory DomesticOfferModel.fromJson(Map<String, dynamic> json) =>
      _$DomesticOfferModelFromJson(json);
}
