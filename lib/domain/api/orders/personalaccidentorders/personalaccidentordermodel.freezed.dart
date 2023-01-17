// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personalaccidentordermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalAccidentOrderModel _$PersonalAccidentOrderModelFromJson(
    Map<String, dynamic> json) {
  return _PersonalAccidentOrderModel.fromJson(json);
}

/// @nodoc
mixin _$PersonalAccidentOrderModel {
  int? get id => throw _privateConstructorUsedError;
  int? get customer_user_id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  int? get personal_accident_insurance_id => throw _privateConstructorUsedError;
  int? get personal_accident_type_id => throw _privateConstructorUsedError;
  int? get personal_accident_occupation_id =>
      throw _privateConstructorUsedError;
  int? get personal_accident_order_status_id =>
      throw _privateConstructorUsedError;
  String? get age_from => throw _privateConstructorUsedError;
  String? get age_to => throw _privateConstructorUsedError;
  String? get personal_accident_occupation =>
      throw _privateConstructorUsedError;
  String? get personal_accident_type => throw _privateConstructorUsedError;
  String? get rate => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get start_date => throw _privateConstructorUsedError;
  String? get end_date => throw _privateConstructorUsedError;
  String? get insurance_amount => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  num? get total_without_addons => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  UserModel? get customer => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;
  RetTypeModel? get type => throw _privateConstructorUsedError;
  List<OrderAddonsModel>? get addons => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  List<FilesModel>? get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalAccidentOrderModelCopyWith<PersonalAccidentOrderModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalAccidentOrderModelCopyWith<$Res> {
  factory $PersonalAccidentOrderModelCopyWith(PersonalAccidentOrderModel value,
          $Res Function(PersonalAccidentOrderModel) then) =
      _$PersonalAccidentOrderModelCopyWithImpl<$Res,
          PersonalAccidentOrderModel>;
  @useResult
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? personal_accident_insurance_id,
      int? personal_accident_type_id,
      int? personal_accident_occupation_id,
      int? personal_accident_order_status_id,
      String? age_from,
      String? age_to,
      String? personal_accident_occupation,
      String? personal_accident_type,
      String? rate,
      String? name,
      String? birthdate,
      int? age,
      String? start_date,
      String? end_date,
      String? insurance_amount,
      num? total,
      num? total_without_addons,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      UserModel? customer,
      CompanyModel? company,
      RetTypeModel? type,
      List<OrderAddonsModel>? addons,
      StatusModel? status,
      List<FilesModel>? files});

  $UserModelCopyWith<$Res>? get customer;
  $CompanyModelCopyWith<$Res>? get company;
  $RetTypeModelCopyWith<$Res>? get type;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$PersonalAccidentOrderModelCopyWithImpl<$Res,
        $Val extends PersonalAccidentOrderModel>
    implements $PersonalAccidentOrderModelCopyWith<$Res> {
  _$PersonalAccidentOrderModelCopyWithImpl(this._value, this._then);

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
    Object? personal_accident_insurance_id = freezed,
    Object? personal_accident_type_id = freezed,
    Object? personal_accident_occupation_id = freezed,
    Object? personal_accident_order_status_id = freezed,
    Object? age_from = freezed,
    Object? age_to = freezed,
    Object? personal_accident_occupation = freezed,
    Object? personal_accident_type = freezed,
    Object? rate = freezed,
    Object? name = freezed,
    Object? birthdate = freezed,
    Object? age = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? insurance_amount = freezed,
    Object? total = freezed,
    Object? total_without_addons = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? customer = freezed,
    Object? company = freezed,
    Object? type = freezed,
    Object? addons = freezed,
    Object? status = freezed,
    Object? files = freezed,
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
      personal_accident_insurance_id: freezed == personal_accident_insurance_id
          ? _value.personal_accident_insurance_id
          : personal_accident_insurance_id // ignore: cast_nullable_to_non_nullable
              as int?,
      personal_accident_type_id: freezed == personal_accident_type_id
          ? _value.personal_accident_type_id
          : personal_accident_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      personal_accident_occupation_id: freezed ==
              personal_accident_occupation_id
          ? _value.personal_accident_occupation_id
          : personal_accident_occupation_id // ignore: cast_nullable_to_non_nullable
              as int?,
      personal_accident_order_status_id: freezed ==
              personal_accident_order_status_id
          ? _value.personal_accident_order_status_id
          : personal_accident_order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      age_from: freezed == age_from
          ? _value.age_from
          : age_from // ignore: cast_nullable_to_non_nullable
              as String?,
      age_to: freezed == age_to
          ? _value.age_to
          : age_to // ignore: cast_nullable_to_non_nullable
              as String?,
      personal_accident_occupation: freezed == personal_accident_occupation
          ? _value.personal_accident_occupation
          : personal_accident_occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      personal_accident_type: freezed == personal_accident_type
          ? _value.personal_accident_type
          : personal_accident_type // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      insurance_amount: freezed == insurance_amount
          ? _value.insurance_amount
          : insurance_amount // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      total_without_addons: freezed == total_without_addons
          ? _value.total_without_addons
          : total_without_addons // ignore: cast_nullable_to_non_nullable
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RetTypeModel?,
      addons: freezed == addons
          ? _value.addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<OrderAddonsModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
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
  $RetTypeModelCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $RetTypeModelCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
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
abstract class _$$_PersonalAccidentOrderModelCopyWith<$Res>
    implements $PersonalAccidentOrderModelCopyWith<$Res> {
  factory _$$_PersonalAccidentOrderModelCopyWith(
          _$_PersonalAccidentOrderModel value,
          $Res Function(_$_PersonalAccidentOrderModel) then) =
      __$$_PersonalAccidentOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? personal_accident_insurance_id,
      int? personal_accident_type_id,
      int? personal_accident_occupation_id,
      int? personal_accident_order_status_id,
      String? age_from,
      String? age_to,
      String? personal_accident_occupation,
      String? personal_accident_type,
      String? rate,
      String? name,
      String? birthdate,
      int? age,
      String? start_date,
      String? end_date,
      String? insurance_amount,
      num? total,
      num? total_without_addons,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      UserModel? customer,
      CompanyModel? company,
      RetTypeModel? type,
      List<OrderAddonsModel>? addons,
      StatusModel? status,
      List<FilesModel>? files});

  @override
  $UserModelCopyWith<$Res>? get customer;
  @override
  $CompanyModelCopyWith<$Res>? get company;
  @override
  $RetTypeModelCopyWith<$Res>? get type;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_PersonalAccidentOrderModelCopyWithImpl<$Res>
    extends _$PersonalAccidentOrderModelCopyWithImpl<$Res,
        _$_PersonalAccidentOrderModel>
    implements _$$_PersonalAccidentOrderModelCopyWith<$Res> {
  __$$_PersonalAccidentOrderModelCopyWithImpl(
      _$_PersonalAccidentOrderModel _value,
      $Res Function(_$_PersonalAccidentOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customer_user_id = freezed,
    Object? company_id = freezed,
    Object? personal_accident_insurance_id = freezed,
    Object? personal_accident_type_id = freezed,
    Object? personal_accident_occupation_id = freezed,
    Object? personal_accident_order_status_id = freezed,
    Object? age_from = freezed,
    Object? age_to = freezed,
    Object? personal_accident_occupation = freezed,
    Object? personal_accident_type = freezed,
    Object? rate = freezed,
    Object? name = freezed,
    Object? birthdate = freezed,
    Object? age = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? insurance_amount = freezed,
    Object? total = freezed,
    Object? total_without_addons = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? customer = freezed,
    Object? company = freezed,
    Object? type = freezed,
    Object? addons = freezed,
    Object? status = freezed,
    Object? files = freezed,
  }) {
    return _then(_$_PersonalAccidentOrderModel(
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
      personal_accident_insurance_id: freezed == personal_accident_insurance_id
          ? _value.personal_accident_insurance_id
          : personal_accident_insurance_id // ignore: cast_nullable_to_non_nullable
              as int?,
      personal_accident_type_id: freezed == personal_accident_type_id
          ? _value.personal_accident_type_id
          : personal_accident_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      personal_accident_occupation_id: freezed ==
              personal_accident_occupation_id
          ? _value.personal_accident_occupation_id
          : personal_accident_occupation_id // ignore: cast_nullable_to_non_nullable
              as int?,
      personal_accident_order_status_id: freezed ==
              personal_accident_order_status_id
          ? _value.personal_accident_order_status_id
          : personal_accident_order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      age_from: freezed == age_from
          ? _value.age_from
          : age_from // ignore: cast_nullable_to_non_nullable
              as String?,
      age_to: freezed == age_to
          ? _value.age_to
          : age_to // ignore: cast_nullable_to_non_nullable
              as String?,
      personal_accident_occupation: freezed == personal_accident_occupation
          ? _value.personal_accident_occupation
          : personal_accident_occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      personal_accident_type: freezed == personal_accident_type
          ? _value.personal_accident_type
          : personal_accident_type // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      insurance_amount: freezed == insurance_amount
          ? _value.insurance_amount
          : insurance_amount // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      total_without_addons: freezed == total_without_addons
          ? _value.total_without_addons
          : total_without_addons // ignore: cast_nullable_to_non_nullable
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RetTypeModel?,
      addons: freezed == addons
          ? _value._addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<OrderAddonsModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalAccidentOrderModel implements _PersonalAccidentOrderModel {
  const _$_PersonalAccidentOrderModel(
      {this.id,
      this.customer_user_id,
      this.company_id,
      this.personal_accident_insurance_id,
      this.personal_accident_type_id,
      this.personal_accident_occupation_id,
      this.personal_accident_order_status_id,
      this.age_from,
      this.age_to,
      this.personal_accident_occupation,
      this.personal_accident_type,
      this.rate,
      this.name,
      this.birthdate,
      this.age,
      this.start_date,
      this.end_date,
      this.insurance_amount,
      this.total,
      this.total_without_addons,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.customer,
      this.company,
      this.type,
      final List<OrderAddonsModel>? addons,
      this.status,
      final List<FilesModel>? files})
      : _addons = addons,
        _files = files;

  factory _$_PersonalAccidentOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalAccidentOrderModelFromJson(json);

  @override
  final int? id;
  @override
  final int? customer_user_id;
  @override
  final int? company_id;
  @override
  final int? personal_accident_insurance_id;
  @override
  final int? personal_accident_type_id;
  @override
  final int? personal_accident_occupation_id;
  @override
  final int? personal_accident_order_status_id;
  @override
  final String? age_from;
  @override
  final String? age_to;
  @override
  final String? personal_accident_occupation;
  @override
  final String? personal_accident_type;
  @override
  final String? rate;
  @override
  final String? name;
  @override
  final String? birthdate;
  @override
  final int? age;
  @override
  final String? start_date;
  @override
  final String? end_date;
  @override
  final String? insurance_amount;
  @override
  final num? total;
  @override
  final num? total_without_addons;
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
  final RetTypeModel? type;
  final List<OrderAddonsModel>? _addons;
  @override
  List<OrderAddonsModel>? get addons {
    final value = _addons;
    if (value == null) return null;
    if (_addons is EqualUnmodifiableListView) return _addons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final StatusModel? status;
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
  String toString() {
    return 'PersonalAccidentOrderModel(id: $id, customer_user_id: $customer_user_id, company_id: $company_id, personal_accident_insurance_id: $personal_accident_insurance_id, personal_accident_type_id: $personal_accident_type_id, personal_accident_occupation_id: $personal_accident_occupation_id, personal_accident_order_status_id: $personal_accident_order_status_id, age_from: $age_from, age_to: $age_to, personal_accident_occupation: $personal_accident_occupation, personal_accident_type: $personal_accident_type, rate: $rate, name: $name, birthdate: $birthdate, age: $age, start_date: $start_date, end_date: $end_date, insurance_amount: $insurance_amount, total: $total, total_without_addons: $total_without_addons, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, customer: $customer, company: $company, type: $type, addons: $addons, status: $status, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalAccidentOrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer_user_id, customer_user_id) ||
                other.customer_user_id == customer_user_id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.personal_accident_insurance_id, personal_accident_insurance_id) ||
                other.personal_accident_insurance_id ==
                    personal_accident_insurance_id) &&
            (identical(other.personal_accident_type_id, personal_accident_type_id) ||
                other.personal_accident_type_id == personal_accident_type_id) &&
            (identical(other.personal_accident_occupation_id, personal_accident_occupation_id) ||
                other.personal_accident_occupation_id ==
                    personal_accident_occupation_id) &&
            (identical(other.personal_accident_order_status_id,
                    personal_accident_order_status_id) ||
                other.personal_accident_order_status_id ==
                    personal_accident_order_status_id) &&
            (identical(other.age_from, age_from) ||
                other.age_from == age_from) &&
            (identical(other.age_to, age_to) || other.age_to == age_to) &&
            (identical(other.personal_accident_occupation, personal_accident_occupation) ||
                other.personal_accident_occupation ==
                    personal_accident_occupation) &&
            (identical(other.personal_accident_type, personal_accident_type) ||
                other.personal_accident_type == personal_accident_type) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.insurance_amount, insurance_amount) ||
                other.insurance_amount == insurance_amount) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.total_without_addons, total_without_addons) ||
                other.total_without_addons == total_without_addons) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) || other.deleted_at == deleted_at) &&
            (identical(other.customer, customer) || other.customer == customer) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._addons, _addons) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        customer_user_id,
        company_id,
        personal_accident_insurance_id,
        personal_accident_type_id,
        personal_accident_occupation_id,
        personal_accident_order_status_id,
        age_from,
        age_to,
        personal_accident_occupation,
        personal_accident_type,
        rate,
        name,
        birthdate,
        age,
        start_date,
        end_date,
        insurance_amount,
        total,
        total_without_addons,
        created_at,
        updated_at,
        deleted_at,
        customer,
        company,
        type,
        const DeepCollectionEquality().hash(_addons),
        status,
        const DeepCollectionEquality().hash(_files)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalAccidentOrderModelCopyWith<_$_PersonalAccidentOrderModel>
      get copyWith => __$$_PersonalAccidentOrderModelCopyWithImpl<
          _$_PersonalAccidentOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalAccidentOrderModelToJson(
      this,
    );
  }
}

abstract class _PersonalAccidentOrderModel
    implements PersonalAccidentOrderModel {
  const factory _PersonalAccidentOrderModel(
      {final int? id,
      final int? customer_user_id,
      final int? company_id,
      final int? personal_accident_insurance_id,
      final int? personal_accident_type_id,
      final int? personal_accident_occupation_id,
      final int? personal_accident_order_status_id,
      final String? age_from,
      final String? age_to,
      final String? personal_accident_occupation,
      final String? personal_accident_type,
      final String? rate,
      final String? name,
      final String? birthdate,
      final int? age,
      final String? start_date,
      final String? end_date,
      final String? insurance_amount,
      final num? total,
      final num? total_without_addons,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final UserModel? customer,
      final CompanyModel? company,
      final RetTypeModel? type,
      final List<OrderAddonsModel>? addons,
      final StatusModel? status,
      final List<FilesModel>? files}) = _$_PersonalAccidentOrderModel;

  factory _PersonalAccidentOrderModel.fromJson(Map<String, dynamic> json) =
      _$_PersonalAccidentOrderModel.fromJson;

  @override
  int? get id;
  @override
  int? get customer_user_id;
  @override
  int? get company_id;
  @override
  int? get personal_accident_insurance_id;
  @override
  int? get personal_accident_type_id;
  @override
  int? get personal_accident_occupation_id;
  @override
  int? get personal_accident_order_status_id;
  @override
  String? get age_from;
  @override
  String? get age_to;
  @override
  String? get personal_accident_occupation;
  @override
  String? get personal_accident_type;
  @override
  String? get rate;
  @override
  String? get name;
  @override
  String? get birthdate;
  @override
  int? get age;
  @override
  String? get start_date;
  @override
  String? get end_date;
  @override
  String? get insurance_amount;
  @override
  num? get total;
  @override
  num? get total_without_addons;
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
  RetTypeModel? get type;
  @override
  List<OrderAddonsModel>? get addons;
  @override
  StatusModel? get status;
  @override
  List<FilesModel>? get files;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalAccidentOrderModelCopyWith<_$_PersonalAccidentOrderModel>
      get copyWith => throw _privateConstructorUsedError;
}
