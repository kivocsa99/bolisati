// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

//needs work
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';
part 'medicalorderdone.freezed.dart';
part 'medicalorderdone.g.dart';

@freezed
class MedicalOrderDoneModel with _$MedicalOrderDoneModel {
  const factory MedicalOrderDoneModel({
    int? customer_user_id,
    int? company_id,
    String? retirement_type_id,
    int? retirement_order_status_id,
    String? retirement_type,
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
  }) = _MedicalOrderDoneModel;
  factory MedicalOrderDoneModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalOrderDoneModelFromJson(json);
}
