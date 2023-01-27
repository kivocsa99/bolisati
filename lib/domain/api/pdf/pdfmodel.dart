// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pdfmodel.freezed.dart';
part 'pdfmodel.g.dart';

@freezed
class PdfModel with _$PdfModel {
  const factory PdfModel({
    int? id,
    int? company_id,
    int? insurance_type_id,
    String? file,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _PdfModel;
  factory PdfModel.fromJson(Map<String, dynamic> json) =>
      _$PdfModelFromJson(json);
}
