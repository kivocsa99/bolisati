// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

//needs work
import 'package:freezed_annotation/freezed_annotation.dart';

part 'personaloccupation.freezed.dart';
part 'personaloccupation.g.dart';

@freezed
class PersonalOccupationModel with _$PersonalOccupationModel {
  const factory PersonalOccupationModel({
    int? id,
    String? name,
    String? name_ar,
    int? personal_accident_type_id,
    String? created_at,
    String? updated_at,
    String? deleted_at,

  }) = _PersonalOccupationModel;
  factory PersonalOccupationModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalOccupationModelFromJson(json);
}
