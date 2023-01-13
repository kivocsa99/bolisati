// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';

part 'domesticdonemodel.freezed.dart';
part 'domesticdonemodel.g.dart';

@freezed
class DomesticDoneModel with _$DomesticDoneModel {
  const factory DomesticDoneModel({
    int? id,
    int? company_id,
    int? customer_user_id,
    int? domestic_worker_order_status_id,
    String? name,
    String? national_id_number,
    String? worker_name,
    int? active,
    String? start_date,
    String? end_date,
    num? total,
    String? created_at,
    String? updated_at,
    List<AddonsModel>? addons,
  }) = _DomesticDoneModel;
  factory DomesticDoneModel.fromJson(Map<String, dynamic> json) =>
      _$DomesticDoneModelFromJson(json);
}
