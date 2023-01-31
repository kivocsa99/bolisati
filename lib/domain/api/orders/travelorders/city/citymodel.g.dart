// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citymodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityModel _$$_CityModelFromJson(Map<String, dynamic> json) => _$_CityModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      state_id: json['state_id'] as int?,
      state_code: json['state_code'] as String?,
      country_id: json['country_id'] as int?,
      country_code: json['country_code'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      flag: json['flag'] as int?,
      wikiDataId: json['wikiDataId'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_CityModelToJson(_$_CityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state_id': instance.state_id,
      'state_code': instance.state_code,
      'country_id': instance.country_id,
      'country_code': instance.country_code,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'flag': instance.flag,
      'wikiDataId': instance.wikiDataId,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
