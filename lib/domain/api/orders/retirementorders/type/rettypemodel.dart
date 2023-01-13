// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rettypemodel.freezed.dart';
part 'rettypemodel.g.dart';

@freezed
class RetTypeModel with _$RetTypeModel {
  const factory RetTypeModel({
    int? id,
    String? name,
    String? name_ar,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _RetTypeModel;
  factory RetTypeModel.fromJson(Map<String, dynamic> json) =>
      _$RetTypeModelFromJson(json);
}
