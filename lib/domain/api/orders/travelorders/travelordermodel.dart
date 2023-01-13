// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bolisati/domain/api/orders/orderaddones/orderaddons.dart';
import 'package:bolisati/domain/api/orders/travelorders/insuranceoffer/travelinsuranceoffermodel.dart';
import 'package:bolisati/domain/api/orders/travelorders/region/regionmodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../company/model/companymodel.dart';
import '../../files/filesmodel.dart';
import '../../status/statusmodel.dart';
import '../../user/model/usermodel.dart';

part 'travelordermodel.freezed.dart';
part 'travelordermodel.g.dart';

@freezed
class TravelOrderModel with _$TravelOrderModel {
  const factory TravelOrderModel({
    int? id,
    int? customer_user_id,
    int? company_id,
    int? travel_insurance_id,
    int? travel_region_id,
    int? travel_order_status_id,
    String? travel_region_name,
    num? period_from,
    num? period_to,
    int? age_from,
    int? age_to,
    num? price,
    String? name,
    String? destination,
    String? start_date,
    String? end_date,
    int? period_of_stay,
    String? birthdate,
    int? age,
    num? total,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    UserModel? customer,
    CompanyModel? company,
    TravelInsuranceOfferModel? insurance_offer,
    StatusModel? status,
    List<OrderAddonsModel>? addons,
    List<FilesModel>? files,
    RegionModel? region,
  }) = _TravelOrderModel;
  factory TravelOrderModel.fromJson(Map<String, dynamic> json) =>
      _$TravelOrderModelFromJson(json);
}
