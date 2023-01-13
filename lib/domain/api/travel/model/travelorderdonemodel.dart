// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

//needs work
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';
part 'travelorderdonemodel.freezed.dart';
part 'travelorderdonemodel.g.dart';

@freezed
class TravelOrderDoneModel with _$TravelOrderDoneModel {
  const factory TravelOrderDoneModel({
    int? customer_user_id,
    int? company_id,
    String? travel_insurance_id,
    int? travel_region_id,
    int? travel_order_status_id,
    String? travel_region_name,
    int? age_from,
    int? age_to,
    int? period_from,
    int? period_to,
    num? price,
    String? name,
    String? distination,
    String? birthdate,
    int? age,
    String? start_date,
    String? end_date,
    int? period_of_stay,
    num? total,
    String? updated_at,
    String? created_at,
    int? id,
    List<AddonsModel>? addons,
  }) = _TravelOrderDoneModel;
  factory TravelOrderDoneModel.fromJson(Map<String, dynamic> json) =>
      _$TravelOrderDoneModelFromJson(json);
}
