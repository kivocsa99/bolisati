// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

//needs work
import 'package:freezed_annotation/freezed_annotation.dart';

part 'petcountrymodel.freezed.dart';
part 'petcountrymodel.g.dart';

@freezed
class PetCountryModel with _$PetCountryModel {
  const factory PetCountryModel({
    int? id,
    String? name,
    String? iso3,
    String? iso2,
    String? phonecode,
    String? capital,
    String? currency,
    String? currencySymbol,
    String? tld,
    String? native,
    String? region,
    String? subregion,
    String? timezones,
    String? translations,
    String? latitude,
    String? longitude,
    String? emoji,
    String? emojiU,
    int? flag,
    String? wikiDataId,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _PetCountryModel;
  factory PetCountryModel.fromJson(Map<String, dynamic> json) =>
      _$PetCountryModelFromJson(json);
}
