// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderaddons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderAddonsModel _$$_OrderAddonsModelFromJson(Map<String, dynamic> json) =>
    _$_OrderAddonsModel(
      id: json['id'] as int?,
      belongable_type: json['belongable_type'] as String?,
      name: json['name'] as String?,
      price: json['price'] as num?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_OrderAddonsModelToJson(_$_OrderAddonsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'belongable_type': instance.belongable_type,
      'name': instance.name,
      'price': instance.price,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
