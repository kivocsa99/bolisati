// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'failurereasonsmodel.freezed.dart';
part 'failurereasonsmodel.g.dart';

@freezed
class FailureReasonsModel with _$FailureReasonsModel {
  const factory FailureReasonsModel({
    int? medical_insurance_id,
    int? marital_status_id,
    String? name,
    String? birth_date,
    String? start_date,
    String? end_date,
  }) = _FailureReasonsModel;
  factory FailureReasonsModel.fromJson(Map<String, dynamic> json) =>
      _$FailureReasonsModelFromJson(json);
}
