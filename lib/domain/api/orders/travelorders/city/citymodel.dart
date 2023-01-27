// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'citymodel.freezed.dart';
part 'citymodel.g.dart';

@freezed
class RegionModel with _$RegionModel {
  const factory RegionModel({
    int? id,
    String? name,
    int? state_id,
    String? state_code,
    int? country_id,
    String? country_code,
    String? latitude,
    String? longitude,
    int? flag,
    String? wikiDataId,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _RegionModel;
  factory RegionModel.fromJson(Map<String, dynamic> json) =>
      _$RegionModelFromJson(json);
}
