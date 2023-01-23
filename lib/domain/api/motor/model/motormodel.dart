// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

//needs work
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';
import '../../company/model/companymodel.dart';

part 'motormodel.freezed.dart';
part 'motormodel.g.dart';

@freezed
class MotorOffersModel with _$MotorOffersModel {
  const factory MotorOffersModel({
    int? id,
    int? company_id,
    num? price_from,
    num? price_to,
    int? fixed,
    num? percentage,
    num? price,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<AddonsModel>? addons,
    CompanyModel? company,
  }) = _MotorOffersModel;
  factory MotorOffersModel.fromJson(Map<String, dynamic> json) =>
      _$MotorOffersModelFromJson(json);
}
