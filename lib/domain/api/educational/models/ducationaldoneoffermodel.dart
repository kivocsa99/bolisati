// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

//needs work
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';
import '../../company/model/companymodel.dart';

part 'ducationaldoneoffermodel.freezed.dart';
part 'ducationaldoneoffermodel.g.dart';

@freezed
class EducationalDoneModel with _$EducationalDoneModel {
  const factory EducationalDoneModel({
    int? customer_user_id,
    String? educational_type_id,
    int? company_id,
    int? educational_order_status_id,
    String? educational_type,
    String? name,
    String? monthly_fee,
    String? university_fee,
    String? birthdate,
    int? age,
    num? total,
    int? active,
    int? id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<AddonsModel>? addons,
    CompanyModel? company,
  }) = _EducationalOffersModel;
  factory EducationalDoneModel.fromJson(Map<String, dynamic> json) =>
      _$EducationalDoneModelFromJson(json);
}
