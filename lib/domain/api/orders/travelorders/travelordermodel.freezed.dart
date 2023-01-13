// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travelordermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelOrderModel _$TravelOrderModelFromJson(Map<String, dynamic> json) {
  return _TravelOrderModel.fromJson(json);
}

/// @nodoc
mixin _$TravelOrderModel {
  int? get id => throw _privateConstructorUsedError;
  int? get customer_user_id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  int? get travel_insurance_id => throw _privateConstructorUsedError;
  int? get travel_region_id => throw _privateConstructorUsedError;
  int? get travel_order_status_id => throw _privateConstructorUsedError;
  String? get travel_region_name => throw _privateConstructorUsedError;
  num? get period_from => throw _privateConstructorUsedError;
  num? get period_to => throw _privateConstructorUsedError;
  int? get age_from => throw _privateConstructorUsedError;
  int? get age_to => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get destination => throw _privateConstructorUsedError;
  String? get start_date => throw _privateConstructorUsedError;
  String? get end_date => throw _privateConstructorUsedError;
  int? get period_of_stay => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  UserModel? get customer => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;
  TravelInsuranceOfferModel? get insurance_offer =>
      throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  List<OrderAddonsModel>? get addons => throw _privateConstructorUsedError;
  List<FilesModel>? get files => throw _privateConstructorUsedError;
  RegionModel? get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelOrderModelCopyWith<TravelOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelOrderModelCopyWith<$Res> {
  factory $TravelOrderModelCopyWith(
          TravelOrderModel value, $Res Function(TravelOrderModel) then) =
      _$TravelOrderModelCopyWithImpl<$Res, TravelOrderModel>;
  @useResult
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? travel_insurance_id,
      int? travel_region_id,
      int? travel_order_status_id,
      String? travel_region_name,
      num? period_from,
      num? period_to,
      int? age_from,
      int? age_to,
      num? price,
      String? name,
      String? destination,
      String? start_date,
      String? end_date,
      int? period_of_stay,
      String? birthdate,
      int? age,
      num? total,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      UserModel? customer,
      CompanyModel? company,
      TravelInsuranceOfferModel? insurance_offer,
      StatusModel? status,
      List<OrderAddonsModel>? addons,
      List<FilesModel>? files,
      RegionModel? region});

  $UserModelCopyWith<$Res>? get customer;
  $CompanyModelCopyWith<$Res>? get company;
  $TravelInsuranceOfferModelCopyWith<$Res>? get insurance_offer;
  $StatusModelCopyWith<$Res>? get status;
  $RegionModelCopyWith<$Res>? get region;
}

/// @nodoc
class _$TravelOrderModelCopyWithImpl<$Res, $Val extends TravelOrderModel>
    implements $TravelOrderModelCopyWith<$Res> {
  _$TravelOrderModelCopyWithImpl(this._value, this._then);

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
    Object? travel_insurance_id = freezed,
    Object? travel_region_id = freezed,
    Object? travel_order_status_id = freezed,
    Object? travel_region_name = freezed,
    Object? period_from = freezed,
    Object? period_to = freezed,
    Object? age_from = freezed,
    Object? age_to = freezed,
    Object? price = freezed,
    Object? name = freezed,
    Object? destination = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? period_of_stay = freezed,
    Object? birthdate = freezed,
    Object? age = freezed,
    Object? total = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? customer = freezed,
    Object? company = freezed,
    Object? insurance_offer = freezed,
    Object? status = freezed,
    Object? addons = freezed,
    Object? files = freezed,
    Object? region = freezed,
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
      travel_insurance_id: freezed == travel_insurance_id
          ? _value.travel_insurance_id
          : travel_insurance_id // ignore: cast_nullable_to_non_nullable
              as int?,
      travel_region_id: freezed == travel_region_id
          ? _value.travel_region_id
          : travel_region_id // ignore: cast_nullable_to_non_nullable
              as int?,
      travel_order_status_id: freezed == travel_order_status_id
          ? _value.travel_order_status_id
          : travel_order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      travel_region_name: freezed == travel_region_name
          ? _value.travel_region_name
          : travel_region_name // ignore: cast_nullable_to_non_nullable
              as String?,
      period_from: freezed == period_from
          ? _value.period_from
          : period_from // ignore: cast_nullable_to_non_nullable
              as num?,
      period_to: freezed == period_to
          ? _value.period_to
          : period_to // ignore: cast_nullable_to_non_nullable
              as num?,
      age_from: freezed == age_from
          ? _value.age_from
          : age_from // ignore: cast_nullable_to_non_nullable
              as int?,
      age_to: freezed == age_to
          ? _value.age_to
          : age_to // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      period_of_stay: freezed == period_of_stay
          ? _value.period_of_stay
          : period_of_stay // ignore: cast_nullable_to_non_nullable
              as int?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
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
              as TravelInsuranceOfferModel?,
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
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as RegionModel?,
    ) as $Val);
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
  $TravelInsuranceOfferModelCopyWith<$Res>? get insurance_offer {
    if (_value.insurance_offer == null) {
      return null;
    }

    return $TravelInsuranceOfferModelCopyWith<$Res>(_value.insurance_offer!,
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

  @override
  @pragma('vm:prefer-inline')
  $RegionModelCopyWith<$Res>? get region {
    if (_value.region == null) {
      return null;
    }

    return $RegionModelCopyWith<$Res>(_value.region!, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TravelOrderModelCopyWith<$Res>
    implements $TravelOrderModelCopyWith<$Res> {
  factory _$$_TravelOrderModelCopyWith(
          _$_TravelOrderModel value, $Res Function(_$_TravelOrderModel) then) =
      __$$_TravelOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? travel_insurance_id,
      int? travel_region_id,
      int? travel_order_status_id,
      String? travel_region_name,
      num? period_from,
      num? period_to,
      int? age_from,
      int? age_to,
      num? price,
      String? name,
      String? destination,
      String? start_date,
      String? end_date,
      int? period_of_stay,
      String? birthdate,
      int? age,
      num? total,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      UserModel? customer,
      CompanyModel? company,
      TravelInsuranceOfferModel? insurance_offer,
      StatusModel? status,
      List<OrderAddonsModel>? addons,
      List<FilesModel>? files,
      RegionModel? region});

  @override
  $UserModelCopyWith<$Res>? get customer;
  @override
  $CompanyModelCopyWith<$Res>? get company;
  @override
  $TravelInsuranceOfferModelCopyWith<$Res>? get insurance_offer;
  @override
  $StatusModelCopyWith<$Res>? get status;
  @override
  $RegionModelCopyWith<$Res>? get region;
}

/// @nodoc
class __$$_TravelOrderModelCopyWithImpl<$Res>
    extends _$TravelOrderModelCopyWithImpl<$Res, _$_TravelOrderModel>
    implements _$$_TravelOrderModelCopyWith<$Res> {
  __$$_TravelOrderModelCopyWithImpl(
      _$_TravelOrderModel _value, $Res Function(_$_TravelOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customer_user_id = freezed,
    Object? company_id = freezed,
    Object? travel_insurance_id = freezed,
    Object? travel_region_id = freezed,
    Object? travel_order_status_id = freezed,
    Object? travel_region_name = freezed,
    Object? period_from = freezed,
    Object? period_to = freezed,
    Object? age_from = freezed,
    Object? age_to = freezed,
    Object? price = freezed,
    Object? name = freezed,
    Object? destination = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? period_of_stay = freezed,
    Object? birthdate = freezed,
    Object? age = freezed,
    Object? total = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? customer = freezed,
    Object? company = freezed,
    Object? insurance_offer = freezed,
    Object? status = freezed,
    Object? addons = freezed,
    Object? files = freezed,
    Object? region = freezed,
  }) {
    return _then(_$_TravelOrderModel(
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
      travel_insurance_id: freezed == travel_insurance_id
          ? _value.travel_insurance_id
          : travel_insurance_id // ignore: cast_nullable_to_non_nullable
              as int?,
      travel_region_id: freezed == travel_region_id
          ? _value.travel_region_id
          : travel_region_id // ignore: cast_nullable_to_non_nullable
              as int?,
      travel_order_status_id: freezed == travel_order_status_id
          ? _value.travel_order_status_id
          : travel_order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      travel_region_name: freezed == travel_region_name
          ? _value.travel_region_name
          : travel_region_name // ignore: cast_nullable_to_non_nullable
              as String?,
      period_from: freezed == period_from
          ? _value.period_from
          : period_from // ignore: cast_nullable_to_non_nullable
              as num?,
      period_to: freezed == period_to
          ? _value.period_to
          : period_to // ignore: cast_nullable_to_non_nullable
              as num?,
      age_from: freezed == age_from
          ? _value.age_from
          : age_from // ignore: cast_nullable_to_non_nullable
              as int?,
      age_to: freezed == age_to
          ? _value.age_to
          : age_to // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      period_of_stay: freezed == period_of_stay
          ? _value.period_of_stay
          : period_of_stay // ignore: cast_nullable_to_non_nullable
              as int?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
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
              as TravelInsuranceOfferModel?,
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
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as RegionModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TravelOrderModel implements _TravelOrderModel {
  const _$_TravelOrderModel(
      {this.id,
      this.customer_user_id,
      this.company_id,
      this.travel_insurance_id,
      this.travel_region_id,
      this.travel_order_status_id,
      this.travel_region_name,
      this.period_from,
      this.period_to,
      this.age_from,
      this.age_to,
      this.price,
      this.name,
      this.destination,
      this.start_date,
      this.end_date,
      this.period_of_stay,
      this.birthdate,
      this.age,
      this.total,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.customer,
      this.company,
      this.insurance_offer,
      this.status,
      final List<OrderAddonsModel>? addons,
      final List<FilesModel>? files,
      this.region})
      : _addons = addons,
        _files = files;

  factory _$_TravelOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_TravelOrderModelFromJson(json);

  @override
  final int? id;
  @override
  final int? customer_user_id;
  @override
  final int? company_id;
  @override
  final int? travel_insurance_id;
  @override
  final int? travel_region_id;
  @override
  final int? travel_order_status_id;
  @override
  final String? travel_region_name;
  @override
  final num? period_from;
  @override
  final num? period_to;
  @override
  final int? age_from;
  @override
  final int? age_to;
  @override
  final num? price;
  @override
  final String? name;
  @override
  final String? destination;
  @override
  final String? start_date;
  @override
  final String? end_date;
  @override
  final int? period_of_stay;
  @override
  final String? birthdate;
  @override
  final int? age;
  @override
  final num? total;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  @override
  final UserModel? customer;
  @override
  final CompanyModel? company;
  @override
  final TravelInsuranceOfferModel? insurance_offer;
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
  final RegionModel? region;

  @override
  String toString() {
    return 'TravelOrderModel(id: $id, customer_user_id: $customer_user_id, company_id: $company_id, travel_insurance_id: $travel_insurance_id, travel_region_id: $travel_region_id, travel_order_status_id: $travel_order_status_id, travel_region_name: $travel_region_name, period_from: $period_from, period_to: $period_to, age_from: $age_from, age_to: $age_to, price: $price, name: $name, destination: $destination, start_date: $start_date, end_date: $end_date, period_of_stay: $period_of_stay, birthdate: $birthdate, age: $age, total: $total, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, customer: $customer, company: $company, insurance_offer: $insurance_offer, status: $status, addons: $addons, files: $files, region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelOrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer_user_id, customer_user_id) ||
                other.customer_user_id == customer_user_id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.travel_insurance_id, travel_insurance_id) ||
                other.travel_insurance_id == travel_insurance_id) &&
            (identical(other.travel_region_id, travel_region_id) ||
                other.travel_region_id == travel_region_id) &&
            (identical(other.travel_order_status_id, travel_order_status_id) ||
                other.travel_order_status_id == travel_order_status_id) &&
            (identical(other.travel_region_name, travel_region_name) ||
                other.travel_region_name == travel_region_name) &&
            (identical(other.period_from, period_from) ||
                other.period_from == period_from) &&
            (identical(other.period_to, period_to) ||
                other.period_to == period_to) &&
            (identical(other.age_from, age_from) ||
                other.age_from == age_from) &&
            (identical(other.age_to, age_to) || other.age_to == age_to) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.period_of_stay, period_of_stay) ||
                other.period_of_stay == period_of_stay) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.insurance_offer, insurance_offer) ||
                other.insurance_offer == insurance_offer) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._addons, _addons) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.region, region) || other.region == region));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        customer_user_id,
        company_id,
        travel_insurance_id,
        travel_region_id,
        travel_order_status_id,
        travel_region_name,
        period_from,
        period_to,
        age_from,
        age_to,
        price,
        name,
        destination,
        start_date,
        end_date,
        period_of_stay,
        birthdate,
        age,
        total,
        created_at,
        updated_at,
        deleted_at,
        customer,
        company,
        insurance_offer,
        status,
        const DeepCollectionEquality().hash(_addons),
        const DeepCollectionEquality().hash(_files),
        region
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelOrderModelCopyWith<_$_TravelOrderModel> get copyWith =>
      __$$_TravelOrderModelCopyWithImpl<_$_TravelOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TravelOrderModelToJson(
      this,
    );
  }
}

abstract class _TravelOrderModel implements TravelOrderModel {
  const factory _TravelOrderModel(
      {final int? id,
      final int? customer_user_id,
      final int? company_id,
      final int? travel_insurance_id,
      final int? travel_region_id,
      final int? travel_order_status_id,
      final String? travel_region_name,
      final num? period_from,
      final num? period_to,
      final int? age_from,
      final int? age_to,
      final num? price,
      final String? name,
      final String? destination,
      final String? start_date,
      final String? end_date,
      final int? period_of_stay,
      final String? birthdate,
      final int? age,
      final num? total,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final UserModel? customer,
      final CompanyModel? company,
      final TravelInsuranceOfferModel? insurance_offer,
      final StatusModel? status,
      final List<OrderAddonsModel>? addons,
      final List<FilesModel>? files,
      final RegionModel? region}) = _$_TravelOrderModel;

  factory _TravelOrderModel.fromJson(Map<String, dynamic> json) =
      _$_TravelOrderModel.fromJson;

  @override
  int? get id;
  @override
  int? get customer_user_id;
  @override
  int? get company_id;
  @override
  int? get travel_insurance_id;
  @override
  int? get travel_region_id;
  @override
  int? get travel_order_status_id;
  @override
  String? get travel_region_name;
  @override
  num? get period_from;
  @override
  num? get period_to;
  @override
  int? get age_from;
  @override
  int? get age_to;
  @override
  num? get price;
  @override
  String? get name;
  @override
  String? get destination;
  @override
  String? get start_date;
  @override
  String? get end_date;
  @override
  int? get period_of_stay;
  @override
  String? get birthdate;
  @override
  int? get age;
  @override
  num? get total;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  UserModel? get customer;
  @override
  CompanyModel? get company;
  @override
  TravelInsuranceOfferModel? get insurance_offer;
  @override
  StatusModel? get status;
  @override
  List<OrderAddonsModel>? get addons;
  @override
  List<FilesModel>? get files;
  @override
  RegionModel? get region;
  @override
  @JsonKey(ignore: true)
  _$$_TravelOrderModelCopyWith<_$_TravelOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
