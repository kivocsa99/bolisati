// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../pdf/pdfmodel.dart';

part 'companymodel.freezed.dart';
part 'companymodel.g.dart';

@freezed
class CompanyModel with _$CompanyModel {
  const factory CompanyModel({
    int? id,
    int? parent_company_id,
    String? name,
    String? name_ar,
    String? description,
    String? description_ar,
    String? code,
    String? email,
    List<PdfModel>? p_d_f_s,
    String? image,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _CompanyModel;
  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}
