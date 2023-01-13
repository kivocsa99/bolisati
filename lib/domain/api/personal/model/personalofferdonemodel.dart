// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

//needs work
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';

part 'personalofferdonemodel.freezed.dart';
part 'personalofferdonemodel.g.dart';

@freezed
class PersonalOfferDoneModel with _$PersonalOfferDoneModel {
  const factory PersonalOfferDoneModel({
    int? customer_user_id,
    int? company_id,
    String? personal_accident_insurance_id,
    String? personal_accident_occupation_id,
    int? personal_accident_type_id,
    int? personal_accident_order_status_id,
    int? age_from,
    int? age_to,
    String? personal_accident_type,
    String? personal_accident_occupation,
    num? rate,
    String? name,
    int? age,
    String? insurance_amount,
    String? birthdate,
    String? start_date,
    String? end_date,
    num? total,
    String? created_at,
    String? updated_at,
    int? id,
    List<AddonsModel>? addons,
  }) = _PersonalOfferDoneModel;
  factory PersonalOfferDoneModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalOfferDoneModelFromJson(json);
}
