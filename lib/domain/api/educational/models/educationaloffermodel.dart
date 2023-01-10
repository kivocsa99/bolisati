// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

//needs work
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';
import '../../company/model/companymodel.dart';

part 'educationaloffermodel.freezed.dart';
part 'educationaloffermodel.g.dart';

@freezed
class EducationalOffersModel with _$EducationalOffersModel {
  const factory EducationalOffersModel({
    int? id,
    int? company_id,
    int? price,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<AddonsModel>? addons,
    CompanyModel? company,
  }) = _EducationalOffersModel;
  factory EducationalOffersModel.fromJson(Map<String, dynamic> json) =>
      _$EducationalOffersModelFromJson(json);
}
