// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'petordermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetOrderModel _$PetOrderModelFromJson(Map<String, dynamic> json) {
  return _PetOrderModel.fromJson(json);
}

/// @nodoc
mixin _$PetOrderModel {
  int? get id => throw _privateConstructorUsedError;
  int? get customer_user_id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  int? get pet_insurance_id => throw _privateConstructorUsedError;
  int? get pet_type_id => throw _privateConstructorUsedError;
  int? get gender_id => throw _privateConstructorUsedError;
  int? get pet_order_status_id => throw _privateConstructorUsedError;
  String? get pet_type => throw _privateConstructorUsedError;
  GenderModel? get gender => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get country_id => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get start_date => throw _privateConstructorUsedError;
  String? get end_date => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  UserModel? get customer => throw _privateConstructorUsedError;
  RetTypeModel? get type => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;
  List<OrderAddonsModel>? get addons => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  List<FilesModel>? get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetOrderModelCopyWith<PetOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetOrderModelCopyWith<$Res> {
  factory $PetOrderModelCopyWith(
          PetOrderModel value, $Res Function(PetOrderModel) then) =
      _$PetOrderModelCopyWithImpl<$Res, PetOrderModel>;
  @useResult
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? pet_insurance_id,
      int? pet_type_id,
      int? gender_id,
      int? pet_order_status_id,
      String? pet_type,
      GenderModel? gender,
      String? name,
      int? country_id,
      String? birthdate,
      int? age,
      String? start_date,
      String? end_date,
      num? total,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      UserModel? customer,
      RetTypeModel? type,
      CompanyModel? company,
      List<OrderAddonsModel>? addons,
      StatusModel? status,
      List<FilesModel>? files});

  $GenderModelCopyWith<$Res>? get gender;
  $UserModelCopyWith<$Res>? get customer;
  $RetTypeModelCopyWith<$Res>? get type;
  $CompanyModelCopyWith<$Res>? get company;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$PetOrderModelCopyWithImpl<$Res, $Val extends PetOrderModel>
    implements $PetOrderModelCopyWith<$Res> {
  _$PetOrderModelCopyWithImpl(this._value, this._then);

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
    Object? pet_insurance_id = freezed,
    Object? pet_type_id = freezed,
    Object? gender_id = freezed,
    Object? pet_order_status_id = freezed,
    Object? pet_type = freezed,
    Object? gender = freezed,
    Object? name = freezed,
    Object? country_id = freezed,
    Object? birthdate = freezed,
    Object? age = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? total = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? customer = freezed,
    Object? type = freezed,
    Object? company = freezed,
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
      pet_insurance_id: freezed == pet_insurance_id
          ? _value.pet_insurance_id
          : pet_insurance_id // ignore: cast_nullable_to_non_nullable
              as int?,
      pet_type_id: freezed == pet_type_id
          ? _value.pet_type_id
          : pet_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      gender_id: freezed == gender_id
          ? _value.gender_id
          : gender_id // ignore: cast_nullable_to_non_nullable
              as int?,
      pet_order_status_id: freezed == pet_order_status_id
          ? _value.pet_order_status_id
          : pet_order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      pet_type: freezed == pet_type
          ? _value.pet_type
          : pet_type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country_id: freezed == country_id
          ? _value.country_id
          : country_id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RetTypeModel?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
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
  $GenderModelCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $GenderModelCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value) as $Val);
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
abstract class _$$_PetOrderModelCopyWith<$Res>
    implements $PetOrderModelCopyWith<$Res> {
  factory _$$_PetOrderModelCopyWith(
          _$_PetOrderModel value, $Res Function(_$_PetOrderModel) then) =
      __$$_PetOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? pet_insurance_id,
      int? pet_type_id,
      int? gender_id,
      int? pet_order_status_id,
      String? pet_type,
      GenderModel? gender,
      String? name,
      int? country_id,
      String? birthdate,
      int? age,
      String? start_date,
      String? end_date,
      num? total,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      UserModel? customer,
      RetTypeModel? type,
      CompanyModel? company,
      List<OrderAddonsModel>? addons,
      StatusModel? status,
      List<FilesModel>? files});

  @override
  $GenderModelCopyWith<$Res>? get gender;
  @override
  $UserModelCopyWith<$Res>? get customer;
  @override
  $RetTypeModelCopyWith<$Res>? get type;
  @override
  $CompanyModelCopyWith<$Res>? get company;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_PetOrderModelCopyWithImpl<$Res>
    extends _$PetOrderModelCopyWithImpl<$Res, _$_PetOrderModel>
    implements _$$_PetOrderModelCopyWith<$Res> {
  __$$_PetOrderModelCopyWithImpl(
      _$_PetOrderModel _value, $Res Function(_$_PetOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customer_user_id = freezed,
    Object? company_id = freezed,
    Object? pet_insurance_id = freezed,
    Object? pet_type_id = freezed,
    Object? gender_id = freezed,
    Object? pet_order_status_id = freezed,
    Object? pet_type = freezed,
    Object? gender = freezed,
    Object? name = freezed,
    Object? country_id = freezed,
    Object? birthdate = freezed,
    Object? age = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? total = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? customer = freezed,
    Object? type = freezed,
    Object? company = freezed,
    Object? addons = freezed,
    Object? status = freezed,
    Object? files = freezed,
  }) {
    return _then(_$_PetOrderModel(
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
      pet_insurance_id: freezed == pet_insurance_id
          ? _value.pet_insurance_id
          : pet_insurance_id // ignore: cast_nullable_to_non_nullable
              as int?,
      pet_type_id: freezed == pet_type_id
          ? _value.pet_type_id
          : pet_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      gender_id: freezed == gender_id
          ? _value.gender_id
          : gender_id // ignore: cast_nullable_to_non_nullable
              as int?,
      pet_order_status_id: freezed == pet_order_status_id
          ? _value.pet_order_status_id
          : pet_order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      pet_type: freezed == pet_type
          ? _value.pet_type
          : pet_type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country_id: freezed == country_id
          ? _value.country_id
          : country_id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RetTypeModel?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
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
class _$_PetOrderModel implements _PetOrderModel {
  const _$_PetOrderModel(
      {this.id,
      this.customer_user_id,
      this.company_id,
      this.pet_insurance_id,
      this.pet_type_id,
      this.gender_id,
      this.pet_order_status_id,
      this.pet_type,
      this.gender,
      this.name,
      this.country_id,
      this.birthdate,
      this.age,
      this.start_date,
      this.end_date,
      this.total,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.customer,
      this.type,
      this.company,
      final List<OrderAddonsModel>? addons,
      this.status,
      final List<FilesModel>? files})
      : _addons = addons,
        _files = files;

  factory _$_PetOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_PetOrderModelFromJson(json);

  @override
  final int? id;
  @override
  final int? customer_user_id;
  @override
  final int? company_id;
  @override
  final int? pet_insurance_id;
  @override
  final int? pet_type_id;
  @override
  final int? gender_id;
  @override
  final int? pet_order_status_id;
  @override
  final String? pet_type;
  @override
  final GenderModel? gender;
  @override
  final String? name;
  @override
  final int? country_id;
  @override
  final String? birthdate;
  @override
  final int? age;
  @override
  final String? start_date;
  @override
  final String? end_date;
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
  final RetTypeModel? type;
  @override
  final CompanyModel? company;
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
    return 'PetOrderModel(id: $id, customer_user_id: $customer_user_id, company_id: $company_id, pet_insurance_id: $pet_insurance_id, pet_type_id: $pet_type_id, gender_id: $gender_id, pet_order_status_id: $pet_order_status_id, pet_type: $pet_type, gender: $gender, name: $name, country_id: $country_id, birthdate: $birthdate, age: $age, start_date: $start_date, end_date: $end_date, total: $total, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, customer: $customer, type: $type, company: $company, addons: $addons, status: $status, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetOrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer_user_id, customer_user_id) ||
                other.customer_user_id == customer_user_id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.pet_insurance_id, pet_insurance_id) ||
                other.pet_insurance_id == pet_insurance_id) &&
            (identical(other.pet_type_id, pet_type_id) ||
                other.pet_type_id == pet_type_id) &&
            (identical(other.gender_id, gender_id) ||
                other.gender_id == gender_id) &&
            (identical(other.pet_order_status_id, pet_order_status_id) ||
                other.pet_order_status_id == pet_order_status_id) &&
            (identical(other.pet_type, pet_type) ||
                other.pet_type == pet_type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country_id, country_id) ||
                other.country_id == country_id) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.company, company) || other.company == company) &&
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
        pet_insurance_id,
        pet_type_id,
        gender_id,
        pet_order_status_id,
        pet_type,
        gender,
        name,
        country_id,
        birthdate,
        age,
        start_date,
        end_date,
        total,
        created_at,
        updated_at,
        deleted_at,
        customer,
        type,
        company,
        const DeepCollectionEquality().hash(_addons),
        status,
        const DeepCollectionEquality().hash(_files)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PetOrderModelCopyWith<_$_PetOrderModel> get copyWith =>
      __$$_PetOrderModelCopyWithImpl<_$_PetOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetOrderModelToJson(
      this,
    );
  }
}

abstract class _PetOrderModel implements PetOrderModel {
  const factory _PetOrderModel(
      {final int? id,
      final int? customer_user_id,
      final int? company_id,
      final int? pet_insurance_id,
      final int? pet_type_id,
      final int? gender_id,
      final int? pet_order_status_id,
      final String? pet_type,
      final GenderModel? gender,
      final String? name,
      final int? country_id,
      final String? birthdate,
      final int? age,
      final String? start_date,
      final String? end_date,
      final num? total,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final UserModel? customer,
      final RetTypeModel? type,
      final CompanyModel? company,
      final List<OrderAddonsModel>? addons,
      final StatusModel? status,
      final List<FilesModel>? files}) = _$_PetOrderModel;

  factory _PetOrderModel.fromJson(Map<String, dynamic> json) =
      _$_PetOrderModel.fromJson;

  @override
  int? get id;
  @override
  int? get customer_user_id;
  @override
  int? get company_id;
  @override
  int? get pet_insurance_id;
  @override
  int? get pet_type_id;
  @override
  int? get gender_id;
  @override
  int? get pet_order_status_id;
  @override
  String? get pet_type;
  @override
  GenderModel? get gender;
  @override
  String? get name;
  @override
  int? get country_id;
  @override
  String? get birthdate;
  @override
  int? get age;
  @override
  String? get start_date;
  @override
  String? get end_date;
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
  RetTypeModel? get type;
  @override
  CompanyModel? get company;
  @override
  List<OrderAddonsModel>? get addons;
  @override
  StatusModel? get status;
  @override
  List<FilesModel>? get files;
  @override
  @JsonKey(ignore: true)
  _$$_PetOrderModelCopyWith<_$_PetOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
