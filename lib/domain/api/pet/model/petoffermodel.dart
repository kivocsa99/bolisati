// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

//needs work
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';
import '../../company/model/companymodel.dart';

part 'petoffermodel.freezed.dart';
part 'petoffermodel.g.dart';

@freezed
class PetOffersModel with _$PetOffersModel {
  const factory PetOffersModel({
    int? id,
    int? company_id,
    num? price,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<AddonsModel>? addons,
    CompanyModel? company,
  }) = _PetOffersModel;
  factory PetOffersModel.fromJson(Map<String, dynamic> json) =>
      _$PetOffersModelFromJson(json);
}
