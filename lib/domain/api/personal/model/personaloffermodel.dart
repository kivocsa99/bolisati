// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

//needs work
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';
import '../../company/model/companymodel.dart';

part 'personaloffermodel.freezed.dart';
part 'personaloffermodel.g.dart';

@freezed
class PersonalOfferModel with _$PersonalOfferModel {
  const factory PersonalOfferModel({
    int? id,
    int? company_id,
    int? price,
    int? active,
    int? age_from,
    int? age_to,
    int? personal_accident_type_id,
    double? rate,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<AddonsModel>? addons,
    CompanyModel? company,
  }) = _PersonalOfferModel;
  factory PersonalOfferModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalOfferModelFromJson(json);
}
