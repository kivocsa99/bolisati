// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

//needs work
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';

part 'petorderdonemodel.freezed.dart';
part 'petorderdonemodel.g.dart';

@freezed
class PetOrderDoneModel with _$PetOrderDoneModel {
  const factory PetOrderDoneModel({
    int? customer_user_id,
    int? company_id,
    String? pet_insurance_id,
    String? pet_type_id,
    String? gender_id,
    int? pet_order_status_id,
    String? pet_type,
    String? gender,
    String? name,
    String? country_id,
    String? birthdate,
    int? age,
    String? start_date,
    String? end_date,
    num? total,
    String? created_at,
    String? updated_at,
    int? id,
    List<AddonsModel>? addons,
  }) = _PetOrderDoneModel;
  factory PetOrderDoneModel.fromJson(Map<String, dynamic> json) =>
      _$PetOrderDoneModelFromJson(json);
}
