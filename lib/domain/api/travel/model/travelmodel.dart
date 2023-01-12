// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';
import '../../company/model/companymodel.dart';

part 'travelmodel.freezed.dart';
part 'travelmodel.g.dart';

@freezed
class TravelOffersModel with _$TravelOffersModel {
  const factory TravelOffersModel({
    int? id,
    int? company_id,
    int? travel_region_id,
    int? period_from,
    int? period_to,
    int? age_form,
    int? age_to,
    num? price,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<AddonsModel>? addons,
    CompanyModel? company,
  }) = _TravelOffersModel;
  factory TravelOffersModel.fromJson(Map<String, dynamic> json) =>
      _$TravelOffersModelFromJson(json);
}
