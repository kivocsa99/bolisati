// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'educationalordermodel.freezed.dart';
part 'educationalordermodel.g.dart';

@freezed
class EducationalOrderModel with _$EducationalOrderModel {
  const factory EducationalOrderModel({int? id}) = _EducationalOrderModel;
  factory EducationalOrderModel.fromJson(Map<String, dynamic> json) =>
      _$EducationalOrderModelFromJson(json);
}
