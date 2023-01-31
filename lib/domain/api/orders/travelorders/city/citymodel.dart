// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'citymodel.freezed.dart';
part 'citymodel.g.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
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
  }) = _CityModel;
  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}
