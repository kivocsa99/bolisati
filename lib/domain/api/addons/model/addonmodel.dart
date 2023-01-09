// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'addonmodel.freezed.dart';
part 'addonmodel.g.dart';

@freezed
class AddonModel with _$AddonModel {
  const factory AddonModel({
    int? id,
    String? insurance_type_id,
    String? code,
    String? name,
    String? name_ar,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    AddonModel? addon,
  }) = _AddonModel;
  factory AddonModel.fromJson(Map<String, dynamic> json) =>
      _$AddonModelFromJson(json);
}
