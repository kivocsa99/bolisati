// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.orders.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserOrdersModel _$$_UserOrdersModelFromJson(Map<String, dynamic> json) =>
    _$_UserOrdersModel(
      AZSVR: json['AZSVR'] as String?,
      DomesticWorkerOrders: (json['DomesticWorkerOrders'] as List<dynamic>?)
          ?.map((e) =>
              DomesticWorkersOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      EducationalOrders: (json['EducationalOrders'] as List<dynamic>?)
          ?.map(
              (e) => EducationalOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      MedicalOrders: (json['MedicalOrders'] as List<dynamic>?)
          ?.map((e) => MedicalOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      MotorOrders: (json['MotorOrders'] as List<dynamic>?)
          ?.map((e) => MotorOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      PersonalAccidentOrders: (json['PersonalAccidentOrders'] as List<dynamic>?)
          ?.map((e) =>
              PersonalAccidentOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      PetOrders: (json['PetOrders'] as List<dynamic>?)
          ?.map((e) => PetOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      RetirementOrders: (json['RetirementOrders'] as List<dynamic>?)
          ?.map((e) => RetirementOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      TravelOrders: (json['TravelOrders'] as List<dynamic>?)
          ?.map((e) => TravelOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserOrdersModelToJson(_$_UserOrdersModel instance) =>
    <String, dynamic>{
      'AZSVR': instance.AZSVR,
      'DomesticWorkerOrders': instance.DomesticWorkerOrders,
      'EducationalOrders': instance.EducationalOrders,
      'MedicalOrders': instance.MedicalOrders,
      'MotorOrders': instance.MotorOrders,
      'PersonalAccidentOrders': instance.PersonalAccidentOrders,
      'PetOrders': instance.PetOrders,
      'RetirementOrders': instance.RetirementOrders,
      'TravelOrders': instance.TravelOrders,
    };
