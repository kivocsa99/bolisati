// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retirementordermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RetirementOrderModel _$RetirementOrderModelFromJson(Map<String, dynamic> json) {
  return _RetirementOrderModel.fromJson(json);
}

/// @nodoc
mixin _$RetirementOrderModel {
  int? get id => throw _privateConstructorUsedError;
  int? get customer_user_id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  int? get retirement_type_id => throw _privateConstructorUsedError;
  int? get retirement_order_status_id => throw _privateConstructorUsedError;
  String? get retirement_type => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  int? get retirement_age => throw _privateConstructorUsedError;
  int? get monthly_fee => throw _privateConstructorUsedError;
  String? get end_date => throw _privateConstructorUsedError;
  int? get fixed_fee => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  num? get total_without_addons => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
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
  $RetirementOrderModelCopyWith<RetirementOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetirementOrderModelCopyWith<$Res> {
  factory $RetirementOrderModelCopyWith(RetirementOrderModel value,
          $Res Function(RetirementOrderModel) then) =
      _$RetirementOrderModelCopyWithImpl<$Res, RetirementOrderModel>;
  @useResult
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? retirement_type_id,
      int? retirement_order_status_id,
      String? retirement_type,
      int? age,
      String? birthdate,
      int? retirement_age,
      int? monthly_fee,
      String? end_date,
      int? fixed_fee,
      String? name,
      num? total_without_addons,
      num? total,
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
class _$RetirementOrderModelCopyWithImpl<$Res,
        $Val extends RetirementOrderModel>
    implements $RetirementOrderModelCopyWith<$Res> {
  _$RetirementOrderModelCopyWithImpl(this._value, this._then);

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
    Object? retirement_type_id = freezed,
    Object? retirement_order_status_id = freezed,
    Object? retirement_type = freezed,
    Object? age = freezed,
    Object? birthdate = freezed,
    Object? retirement_age = freezed,
    Object? monthly_fee = freezed,
    Object? end_date = freezed,
    Object? fixed_fee = freezed,
    Object? name = freezed,
    Object? total_without_addons = freezed,
    Object? total = freezed,
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
      retirement_type_id: freezed == retirement_type_id
          ? _value.retirement_type_id
          : retirement_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      retirement_order_status_id: freezed == retirement_order_status_id
          ? _value.retirement_order_status_id
          : retirement_order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      retirement_type: freezed == retirement_type
          ? _value.retirement_type
          : retirement_type // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      retirement_age: freezed == retirement_age
          ? _value.retirement_age
          : retirement_age // ignore: cast_nullable_to_non_nullable
              as int?,
      monthly_fee: freezed == monthly_fee
          ? _value.monthly_fee
          : monthly_fee // ignore: cast_nullable_to_non_nullable
              as int?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      fixed_fee: freezed == fixed_fee
          ? _value.fixed_fee
          : fixed_fee // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      total_without_addons: freezed == total_without_addons
          ? _value.total_without_addons
          : total_without_addons // ignore: cast_nullable_to_non_nullable
              as num?,
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
abstract class _$$_RetirementOrderModelCopyWith<$Res>
    implements $RetirementOrderModelCopyWith<$Res> {
  factory _$$_RetirementOrderModelCopyWith(_$_RetirementOrderModel value,
          $Res Function(_$_RetirementOrderModel) then) =
      __$$_RetirementOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? retirement_type_id,
      int? retirement_order_status_id,
      String? retirement_type,
      int? age,
      String? birthdate,
      int? retirement_age,
      int? monthly_fee,
      String? end_date,
      int? fixed_fee,
      String? name,
      num? total_without_addons,
      num? total,
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
class __$$_RetirementOrderModelCopyWithImpl<$Res>
    extends _$RetirementOrderModelCopyWithImpl<$Res, _$_RetirementOrderModel>
    implements _$$_RetirementOrderModelCopyWith<$Res> {
  __$$_RetirementOrderModelCopyWithImpl(_$_RetirementOrderModel _value,
      $Res Function(_$_RetirementOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customer_user_id = freezed,
    Object? company_id = freezed,
    Object? retirement_type_id = freezed,
    Object? retirement_order_status_id = freezed,
    Object? retirement_type = freezed,
    Object? age = freezed,
    Object? birthdate = freezed,
    Object? retirement_age = freezed,
    Object? monthly_fee = freezed,
    Object? end_date = freezed,
    Object? fixed_fee = freezed,
    Object? name = freezed,
    Object? total_without_addons = freezed,
    Object? total = freezed,
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
    return _then(_$_RetirementOrderModel(
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
      retirement_type_id: freezed == retirement_type_id
          ? _value.retirement_type_id
          : retirement_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      retirement_order_status_id: freezed == retirement_order_status_id
          ? _value.retirement_order_status_id
          : retirement_order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      retirement_type: freezed == retirement_type
          ? _value.retirement_type
          : retirement_type // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      retirement_age: freezed == retirement_age
          ? _value.retirement_age
          : retirement_age // ignore: cast_nullable_to_non_nullable
              as int?,
      monthly_fee: freezed == monthly_fee
          ? _value.monthly_fee
          : monthly_fee // ignore: cast_nullable_to_non_nullable
              as int?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      fixed_fee: freezed == fixed_fee
          ? _value.fixed_fee
          : fixed_fee // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      total_without_addons: freezed == total_without_addons
          ? _value.total_without_addons
          : total_without_addons // ignore: cast_nullable_to_non_nullable
              as num?,
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
class _$_RetirementOrderModel implements _RetirementOrderModel {
  const _$_RetirementOrderModel(
      {this.id,
      this.customer_user_id,
      this.company_id,
      this.retirement_type_id,
      this.retirement_order_status_id,
      this.retirement_type,
      this.age,
      this.birthdate,
      this.retirement_age,
      this.monthly_fee,
      this.end_date,
      this.fixed_fee,
      this.name,
      this.total_without_addons,
      this.total,
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

  factory _$_RetirementOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_RetirementOrderModelFromJson(json);

  @override
  final int? id;
  @override
  final int? customer_user_id;
  @override
  final int? company_id;
  @override
  final int? retirement_type_id;
  @override
  final int? retirement_order_status_id;
  @override
  final String? retirement_type;
  @override
  final int? age;
  @override
  final String? birthdate;
  @override
  final int? retirement_age;
  @override
  final int? monthly_fee;
  @override
  final String? end_date;
  @override
  final int? fixed_fee;
  @override
  final String? name;
  @override
  final num? total_without_addons;
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
    return 'RetirementOrderModel(id: $id, customer_user_id: $customer_user_id, company_id: $company_id, retirement_type_id: $retirement_type_id, retirement_order_status_id: $retirement_order_status_id, retirement_type: $retirement_type, age: $age, birthdate: $birthdate, retirement_age: $retirement_age, monthly_fee: $monthly_fee, end_date: $end_date, fixed_fee: $fixed_fee, name: $name, total_without_addons: $total_without_addons, total: $total, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, customer: $customer, company: $company, type: $type, addons: $addons, status: $status, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RetirementOrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer_user_id, customer_user_id) ||
                other.customer_user_id == customer_user_id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.retirement_type_id, retirement_type_id) ||
                other.retirement_type_id == retirement_type_id) &&
            (identical(other.retirement_order_status_id,
                    retirement_order_status_id) ||
                other.retirement_order_status_id ==
                    retirement_order_status_id) &&
            (identical(other.retirement_type, retirement_type) ||
                other.retirement_type == retirement_type) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.retirement_age, retirement_age) ||
                other.retirement_age == retirement_age) &&
            (identical(other.monthly_fee, monthly_fee) ||
                other.monthly_fee == monthly_fee) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.fixed_fee, fixed_fee) ||
                other.fixed_fee == fixed_fee) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.total_without_addons, total_without_addons) ||
                other.total_without_addons == total_without_addons) &&
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
        retirement_type_id,
        retirement_order_status_id,
        retirement_type,
        age,
        birthdate,
        retirement_age,
        monthly_fee,
        end_date,
        fixed_fee,
        name,
        total_without_addons,
        total,
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
  _$$_RetirementOrderModelCopyWith<_$_RetirementOrderModel> get copyWith =>
      __$$_RetirementOrderModelCopyWithImpl<_$_RetirementOrderModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RetirementOrderModelToJson(
      this,
    );
  }
}

abstract class _RetirementOrderModel implements RetirementOrderModel {
  const factory _RetirementOrderModel(
      {final int? id,
      final int? customer_user_id,
      final int? company_id,
      final int? retirement_type_id,
      final int? retirement_order_status_id,
      final String? retirement_type,
      final int? age,
      final String? birthdate,
      final int? retirement_age,
      final int? monthly_fee,
      final String? end_date,
      final int? fixed_fee,
      final String? name,
      final num? total_without_addons,
      final num? total,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final UserModel? customer,
      final CompanyModel? company,
      final RetTypeModel? type,
      final List<OrderAddonsModel>? addons,
      final StatusModel? status,
      final List<FilesModel>? files}) = _$_RetirementOrderModel;

  factory _RetirementOrderModel.fromJson(Map<String, dynamic> json) =
      _$_RetirementOrderModel.fromJson;

  @override
  int? get id;
  @override
  int? get customer_user_id;
  @override
  int? get company_id;
  @override
  int? get retirement_type_id;
  @override
  int? get retirement_order_status_id;
  @override
  String? get retirement_type;
  @override
  int? get age;
  @override
  String? get birthdate;
  @override
  int? get retirement_age;
  @override
  int? get monthly_fee;
  @override
  String? get end_date;
  @override
  int? get fixed_fee;
  @override
  String? get name;
  @override
  num? get total_without_addons;
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
  RetTypeModel? get type;
  @override
  List<OrderAddonsModel>? get addons;
  @override
  StatusModel? get status;
  @override
  List<FilesModel>? get files;
  @override
  @JsonKey(ignore: true)
  _$$_RetirementOrderModelCopyWith<_$_RetirementOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
