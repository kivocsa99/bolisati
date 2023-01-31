// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'motorordermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MotorOrderModel _$MotorOrderModelFromJson(Map<String, dynamic> json) {
  return _MotorOrderModel.fromJson(json);
}

/// @nodoc
mixin _$MotorOrderModel {
  int? get id => throw _privateConstructorUsedError;
  int? get customer_user_id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  int? get motor_insurance_id => throw _privateConstructorUsedError;
  int? get vehicle_make_id => throw _privateConstructorUsedError;
  int? get vehicle_model_id => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  num? get price_from => throw _privateConstructorUsedError;
  num? get price_to => throw _privateConstructorUsedError;
  int? get fixed => throw _privateConstructorUsedError;
  num? get percentage => throw _privateConstructorUsedError;
  VehicleMakeModel? get vehicle_make => throw _privateConstructorUsedError;
  VehicleModelModel? get vehicle_model => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get car_make => throw _privateConstructorUsedError;
  String? get car_model => throw _privateConstructorUsedError;
  int? get estimated_car_price => throw _privateConstructorUsedError;
  int? get previous_accidents => throw _privateConstructorUsedError;
  String? get start_date => throw _privateConstructorUsedError;
  String? get end_date => throw _privateConstructorUsedError;
  String? get fuel_type => throw _privateConstructorUsedError;
  String? get car_year => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  UserModel? get customer => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;
  MotorInsuranceOfferModel? get insurance_offer =>
      throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  List<OrderAddonsModel>? get addons => throw _privateConstructorUsedError;
  List<FilesModel>? get files => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MotorOrderModelCopyWith<MotorOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotorOrderModelCopyWith<$Res> {
  factory $MotorOrderModelCopyWith(
          MotorOrderModel value, $Res Function(MotorOrderModel) then) =
      _$MotorOrderModelCopyWithImpl<$Res, MotorOrderModel>;
  @useResult
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? motor_insurance_id,
      int? vehicle_make_id,
      int? vehicle_model_id,
      num? price,
      num? price_from,
      num? price_to,
      int? fixed,
      num? percentage,
      VehicleMakeModel? vehicle_make,
      VehicleModelModel? vehicle_model,
      String? name,
      String? car_make,
      String? car_model,
      int? estimated_car_price,
      int? previous_accidents,
      String? start_date,
      String? end_date,
      String? fuel_type,
      String? car_year,
      num? total,
      UserModel? customer,
      CompanyModel? company,
      MotorInsuranceOfferModel? insurance_offer,
      StatusModel? status,
      List<OrderAddonsModel>? addons,
      List<FilesModel>? files,
      String? created_at,
      String? updated_at,
      String? deleted_at});

  $VehicleMakeModelCopyWith<$Res>? get vehicle_make;
  $VehicleModelModelCopyWith<$Res>? get vehicle_model;
  $UserModelCopyWith<$Res>? get customer;
  $CompanyModelCopyWith<$Res>? get company;
  $MotorInsuranceOfferModelCopyWith<$Res>? get insurance_offer;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$MotorOrderModelCopyWithImpl<$Res, $Val extends MotorOrderModel>
    implements $MotorOrderModelCopyWith<$Res> {
  _$MotorOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customer_user_id = freezed,
    Object? company_id = freezed,
    Object? motor_insurance_id = freezed,
    Object? vehicle_make_id = freezed,
    Object? vehicle_model_id = freezed,
    Object? price = freezed,
    Object? price_from = freezed,
    Object? price_to = freezed,
    Object? fixed = freezed,
    Object? percentage = freezed,
    Object? vehicle_make = freezed,
    Object? vehicle_model = freezed,
    Object? name = freezed,
    Object? car_make = freezed,
    Object? car_model = freezed,
    Object? estimated_car_price = freezed,
    Object? previous_accidents = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? fuel_type = freezed,
    Object? car_year = freezed,
    Object? total = freezed,
    Object? customer = freezed,
    Object? company = freezed,
    Object? insurance_offer = freezed,
    Object? status = freezed,
    Object? addons = freezed,
    Object? files = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      customer_user_id: freezed == customer_user_id
          ? _value.customer_user_id
          : customer_user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      company_id: freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as int?,
      motor_insurance_id: freezed == motor_insurance_id
          ? _value.motor_insurance_id
          : motor_insurance_id // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicle_make_id: freezed == vehicle_make_id
          ? _value.vehicle_make_id
          : vehicle_make_id // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicle_model_id: freezed == vehicle_model_id
          ? _value.vehicle_model_id
          : vehicle_model_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      price_from: freezed == price_from
          ? _value.price_from
          : price_from // ignore: cast_nullable_to_non_nullable
              as num?,
      price_to: freezed == price_to
          ? _value.price_to
          : price_to // ignore: cast_nullable_to_non_nullable
              as num?,
      fixed: freezed == fixed
          ? _value.fixed
          : fixed // ignore: cast_nullable_to_non_nullable
              as int?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as num?,
      vehicle_make: freezed == vehicle_make
          ? _value.vehicle_make
          : vehicle_make // ignore: cast_nullable_to_non_nullable
              as VehicleMakeModel?,
      vehicle_model: freezed == vehicle_model
          ? _value.vehicle_model
          : vehicle_model // ignore: cast_nullable_to_non_nullable
              as VehicleModelModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      car_make: freezed == car_make
          ? _value.car_make
          : car_make // ignore: cast_nullable_to_non_nullable
              as String?,
      car_model: freezed == car_model
          ? _value.car_model
          : car_model // ignore: cast_nullable_to_non_nullable
              as String?,
      estimated_car_price: freezed == estimated_car_price
          ? _value.estimated_car_price
          : estimated_car_price // ignore: cast_nullable_to_non_nullable
              as int?,
      previous_accidents: freezed == previous_accidents
          ? _value.previous_accidents
          : previous_accidents // ignore: cast_nullable_to_non_nullable
              as int?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      fuel_type: freezed == fuel_type
          ? _value.fuel_type
          : fuel_type // ignore: cast_nullable_to_non_nullable
              as String?,
      car_year: freezed == car_year
          ? _value.car_year
          : car_year // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
      insurance_offer: freezed == insurance_offer
          ? _value.insurance_offer
          : insurance_offer // ignore: cast_nullable_to_non_nullable
              as MotorInsuranceOfferModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      addons: freezed == addons
          ? _value.addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<OrderAddonsModel>?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleMakeModelCopyWith<$Res>? get vehicle_make {
    if (_value.vehicle_make == null) {
      return null;
    }

    return $VehicleMakeModelCopyWith<$Res>(_value.vehicle_make!, (value) {
      return _then(_value.copyWith(vehicle_make: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleModelModelCopyWith<$Res>? get vehicle_model {
    if (_value.vehicle_model == null) {
      return null;
    }

    return $VehicleModelModelCopyWith<$Res>(_value.vehicle_model!, (value) {
      return _then(_value.copyWith(vehicle_model: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyModelCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyModelCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MotorInsuranceOfferModelCopyWith<$Res>? get insurance_offer {
    if (_value.insurance_offer == null) {
      return null;
    }

    return $MotorInsuranceOfferModelCopyWith<$Res>(_value.insurance_offer!,
        (value) {
      return _then(_value.copyWith(insurance_offer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusModelCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusModelCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MotorOrderModelCopyWith<$Res>
    implements $MotorOrderModelCopyWith<$Res> {
  factory _$$_MotorOrderModelCopyWith(
          _$_MotorOrderModel value, $Res Function(_$_MotorOrderModel) then) =
      __$$_MotorOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? motor_insurance_id,
      int? vehicle_make_id,
      int? vehicle_model_id,
      num? price,
      num? price_from,
      num? price_to,
      int? fixed,
      num? percentage,
      VehicleMakeModel? vehicle_make,
      VehicleModelModel? vehicle_model,
      String? name,
      String? car_make,
      String? car_model,
      int? estimated_car_price,
      int? previous_accidents,
      String? start_date,
      String? end_date,
      String? fuel_type,
      String? car_year,
      num? total,
      UserModel? customer,
      CompanyModel? company,
      MotorInsuranceOfferModel? insurance_offer,
      StatusModel? status,
      List<OrderAddonsModel>? addons,
      List<FilesModel>? files,
      String? created_at,
      String? updated_at,
      String? deleted_at});

  @override
  $VehicleMakeModelCopyWith<$Res>? get vehicle_make;
  @override
  $VehicleModelModelCopyWith<$Res>? get vehicle_model;
  @override
  $UserModelCopyWith<$Res>? get customer;
  @override
  $CompanyModelCopyWith<$Res>? get company;
  @override
  $MotorInsuranceOfferModelCopyWith<$Res>? get insurance_offer;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_MotorOrderModelCopyWithImpl<$Res>
    extends _$MotorOrderModelCopyWithImpl<$Res, _$_MotorOrderModel>
    implements _$$_MotorOrderModelCopyWith<$Res> {
  __$$_MotorOrderModelCopyWithImpl(
      _$_MotorOrderModel _value, $Res Function(_$_MotorOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customer_user_id = freezed,
    Object? company_id = freezed,
    Object? motor_insurance_id = freezed,
    Object? vehicle_make_id = freezed,
    Object? vehicle_model_id = freezed,
    Object? price = freezed,
    Object? price_from = freezed,
    Object? price_to = freezed,
    Object? fixed = freezed,
    Object? percentage = freezed,
    Object? vehicle_make = freezed,
    Object? vehicle_model = freezed,
    Object? name = freezed,
    Object? car_make = freezed,
    Object? car_model = freezed,
    Object? estimated_car_price = freezed,
    Object? previous_accidents = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? fuel_type = freezed,
    Object? car_year = freezed,
    Object? total = freezed,
    Object? customer = freezed,
    Object? company = freezed,
    Object? insurance_offer = freezed,
    Object? status = freezed,
    Object? addons = freezed,
    Object? files = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_$_MotorOrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      customer_user_id: freezed == customer_user_id
          ? _value.customer_user_id
          : customer_user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      company_id: freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as int?,
      motor_insurance_id: freezed == motor_insurance_id
          ? _value.motor_insurance_id
          : motor_insurance_id // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicle_make_id: freezed == vehicle_make_id
          ? _value.vehicle_make_id
          : vehicle_make_id // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicle_model_id: freezed == vehicle_model_id
          ? _value.vehicle_model_id
          : vehicle_model_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      price_from: freezed == price_from
          ? _value.price_from
          : price_from // ignore: cast_nullable_to_non_nullable
              as num?,
      price_to: freezed == price_to
          ? _value.price_to
          : price_to // ignore: cast_nullable_to_non_nullable
              as num?,
      fixed: freezed == fixed
          ? _value.fixed
          : fixed // ignore: cast_nullable_to_non_nullable
              as int?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as num?,
      vehicle_make: freezed == vehicle_make
          ? _value.vehicle_make
          : vehicle_make // ignore: cast_nullable_to_non_nullable
              as VehicleMakeModel?,
      vehicle_model: freezed == vehicle_model
          ? _value.vehicle_model
          : vehicle_model // ignore: cast_nullable_to_non_nullable
              as VehicleModelModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      car_make: freezed == car_make
          ? _value.car_make
          : car_make // ignore: cast_nullable_to_non_nullable
              as String?,
      car_model: freezed == car_model
          ? _value.car_model
          : car_model // ignore: cast_nullable_to_non_nullable
              as String?,
      estimated_car_price: freezed == estimated_car_price
          ? _value.estimated_car_price
          : estimated_car_price // ignore: cast_nullable_to_non_nullable
              as int?,
      previous_accidents: freezed == previous_accidents
          ? _value.previous_accidents
          : previous_accidents // ignore: cast_nullable_to_non_nullable
              as int?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      fuel_type: freezed == fuel_type
          ? _value.fuel_type
          : fuel_type // ignore: cast_nullable_to_non_nullable
              as String?,
      car_year: freezed == car_year
          ? _value.car_year
          : car_year // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
      insurance_offer: freezed == insurance_offer
          ? _value.insurance_offer
          : insurance_offer // ignore: cast_nullable_to_non_nullable
              as MotorInsuranceOfferModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      addons: freezed == addons
          ? _value._addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<OrderAddonsModel>?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MotorOrderModel implements _MotorOrderModel {
  const _$_MotorOrderModel(
      {this.id,
      this.customer_user_id,
      this.company_id,
      this.motor_insurance_id,
      this.vehicle_make_id,
      this.vehicle_model_id,
      this.price,
      this.price_from,
      this.price_to,
      this.fixed,
      this.percentage,
      this.vehicle_make,
      this.vehicle_model,
      this.name,
      this.car_make,
      this.car_model,
      this.estimated_car_price,
      this.previous_accidents,
      this.start_date,
      this.end_date,
      this.fuel_type,
      this.car_year,
      this.total,
      this.customer,
      this.company,
      this.insurance_offer,
      this.status,
      final List<OrderAddonsModel>? addons,
      final List<FilesModel>? files,
      this.created_at,
      this.updated_at,
      this.deleted_at})
      : _addons = addons,
        _files = files;

  factory _$_MotorOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_MotorOrderModelFromJson(json);

  @override
  final int? id;
  @override
  final int? customer_user_id;
  @override
  final int? company_id;
  @override
  final int? motor_insurance_id;
  @override
  final int? vehicle_make_id;
  @override
  final int? vehicle_model_id;
  @override
  final num? price;
  @override
  final num? price_from;
  @override
  final num? price_to;
  @override
  final int? fixed;
  @override
  final num? percentage;
  @override
  final VehicleMakeModel? vehicle_make;
  @override
  final VehicleModelModel? vehicle_model;
  @override
  final String? name;
  @override
  final String? car_make;
  @override
  final String? car_model;
  @override
  final int? estimated_car_price;
  @override
  final int? previous_accidents;
  @override
  final String? start_date;
  @override
  final String? end_date;
  @override
  final String? fuel_type;
  @override
  final String? car_year;
  @override
  final num? total;
  @override
  final UserModel? customer;
  @override
  final CompanyModel? company;
  @override
  final MotorInsuranceOfferModel? insurance_offer;
  @override
  final StatusModel? status;
  final List<OrderAddonsModel>? _addons;
  @override
  List<OrderAddonsModel>? get addons {
    final value = _addons;
    if (value == null) return null;
    if (_addons is EqualUnmodifiableListView) return _addons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FilesModel>? _files;
  @override
  List<FilesModel>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;

  @override
  String toString() {
    return 'MotorOrderModel(id: $id, customer_user_id: $customer_user_id, company_id: $company_id, motor_insurance_id: $motor_insurance_id, vehicle_make_id: $vehicle_make_id, vehicle_model_id: $vehicle_model_id, price: $price, price_from: $price_from, price_to: $price_to, fixed: $fixed, percentage: $percentage, vehicle_make: $vehicle_make, vehicle_model: $vehicle_model, name: $name, car_make: $car_make, car_model: $car_model, estimated_car_price: $estimated_car_price, previous_accidents: $previous_accidents, start_date: $start_date, end_date: $end_date, fuel_type: $fuel_type, car_year: $car_year, total: $total, customer: $customer, company: $company, insurance_offer: $insurance_offer, status: $status, addons: $addons, files: $files, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MotorOrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer_user_id, customer_user_id) ||
                other.customer_user_id == customer_user_id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.motor_insurance_id, motor_insurance_id) ||
                other.motor_insurance_id == motor_insurance_id) &&
            (identical(other.vehicle_make_id, vehicle_make_id) ||
                other.vehicle_make_id == vehicle_make_id) &&
            (identical(other.vehicle_model_id, vehicle_model_id) ||
                other.vehicle_model_id == vehicle_model_id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.price_from, price_from) ||
                other.price_from == price_from) &&
            (identical(other.price_to, price_to) ||
                other.price_to == price_to) &&
            (identical(other.fixed, fixed) || other.fixed == fixed) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.vehicle_make, vehicle_make) ||
                other.vehicle_make == vehicle_make) &&
            (identical(other.vehicle_model, vehicle_model) ||
                other.vehicle_model == vehicle_model) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.car_make, car_make) ||
                other.car_make == car_make) &&
            (identical(other.car_model, car_model) ||
                other.car_model == car_model) &&
            (identical(other.estimated_car_price, estimated_car_price) ||
                other.estimated_car_price == estimated_car_price) &&
            (identical(other.previous_accidents, previous_accidents) ||
                other.previous_accidents == previous_accidents) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.fuel_type, fuel_type) ||
                other.fuel_type == fuel_type) &&
            (identical(other.car_year, car_year) ||
                other.car_year == car_year) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.insurance_offer, insurance_offer) ||
                other.insurance_offer == insurance_offer) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._addons, _addons) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        customer_user_id,
        company_id,
        motor_insurance_id,
        vehicle_make_id,
        vehicle_model_id,
        price,
        price_from,
        price_to,
        fixed,
        percentage,
        vehicle_make,
        vehicle_model,
        name,
        car_make,
        car_model,
        estimated_car_price,
        previous_accidents,
        start_date,
        end_date,
        fuel_type,
        car_year,
        total,
        customer,
        company,
        insurance_offer,
        status,
        const DeepCollectionEquality().hash(_addons),
        const DeepCollectionEquality().hash(_files),
        created_at,
        updated_at,
        deleted_at
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MotorOrderModelCopyWith<_$_MotorOrderModel> get copyWith =>
      __$$_MotorOrderModelCopyWithImpl<_$_MotorOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MotorOrderModelToJson(
      this,
    );
  }
}

abstract class _MotorOrderModel implements MotorOrderModel {
  const factory _MotorOrderModel(
      {final int? id,
      final int? customer_user_id,
      final int? company_id,
      final int? motor_insurance_id,
      final int? vehicle_make_id,
      final int? vehicle_model_id,
      final num? price,
      final num? price_from,
      final num? price_to,
      final int? fixed,
      final num? percentage,
      final VehicleMakeModel? vehicle_make,
      final VehicleModelModel? vehicle_model,
      final String? name,
      final String? car_make,
      final String? car_model,
      final int? estimated_car_price,
      final int? previous_accidents,
      final String? start_date,
      final String? end_date,
      final String? fuel_type,
      final String? car_year,
      final num? total,
      final UserModel? customer,
      final CompanyModel? company,
      final MotorInsuranceOfferModel? insurance_offer,
      final StatusModel? status,
      final List<OrderAddonsModel>? addons,
      final List<FilesModel>? files,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$_MotorOrderModel;

  factory _MotorOrderModel.fromJson(Map<String, dynamic> json) =
      _$_MotorOrderModel.fromJson;

  @override
  int? get id;
  @override
  int? get customer_user_id;
  @override
  int? get company_id;
  @override
  int? get motor_insurance_id;
  @override
  int? get vehicle_make_id;
  @override
  int? get vehicle_model_id;
  @override
  num? get price;
  @override
  num? get price_from;
  @override
  num? get price_to;
  @override
  int? get fixed;
  @override
  num? get percentage;
  @override
  VehicleMakeModel? get vehicle_make;
  @override
  VehicleModelModel? get vehicle_model;
  @override
  String? get name;
  @override
  String? get car_make;
  @override
  String? get car_model;
  @override
  int? get estimated_car_price;
  @override
  int? get previous_accidents;
  @override
  String? get start_date;
  @override
  String? get end_date;
  @override
  String? get fuel_type;
  @override
  String? get car_year;
  @override
  num? get total;
  @override
  UserModel? get customer;
  @override
  CompanyModel? get company;
  @override
  MotorInsuranceOfferModel? get insurance_offer;
  @override
  StatusModel? get status;
  @override
  List<OrderAddonsModel>? get addons;
  @override
  List<FilesModel>? get files;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  @JsonKey(ignore: true)
  _$$_MotorOrderModelCopyWith<_$_MotorOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
