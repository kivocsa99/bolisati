// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicalordermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicalOrderModel _$MedicalOrderModelFromJson(Map<String, dynamic> json) {
  return _MedicalOrderModel.fromJson(json);
}

/// @nodoc
mixin _$MedicalOrderModel {
  int? get id => throw _privateConstructorUsedError;
  int? get customer_user_id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  int? get medical_insurance_id => throw _privateConstructorUsedError;
  int? get marital_status_id => throw _privateConstructorUsedError;
  int? get medical_insurance_type_id => throw _privateConstructorUsedError;
  int? get gender_id => throw _privateConstructorUsedError;
  int? get medical_order_status_id => throw _privateConstructorUsedError;
  int? get age_form => throw _privateConstructorUsedError;
  int? get age_to => throw _privateConstructorUsedError;
  String? get medical_insurance_type => throw _privateConstructorUsedError;
  GenderModel? get gender => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get start_date => throw _privateConstructorUsedError;
  String? get end_date => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  UserModel? get customer => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;
  MedicalInsuranceOfferModel? get insurance_offer =>
      throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  List<OrderAddonsModel>? get addons => throw _privateConstructorUsedError;
  List<FilesModel>? get files => throw _privateConstructorUsedError;
  MaritalStatusModel? get marital_status => throw _privateConstructorUsedError;
  MedicalTypeModel? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalOrderModelCopyWith<MedicalOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalOrderModelCopyWith<$Res> {
  factory $MedicalOrderModelCopyWith(
          MedicalOrderModel value, $Res Function(MedicalOrderModel) then) =
      _$MedicalOrderModelCopyWithImpl<$Res, MedicalOrderModel>;
  @useResult
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? medical_insurance_id,
      int? marital_status_id,
      int? medical_insurance_type_id,
      int? gender_id,
      int? medical_order_status_id,
      int? age_form,
      int? age_to,
      String? medical_insurance_type,
      GenderModel? gender,
      num? price,
      String? name,
      String? birthdate,
      int? age,
      String? start_date,
      String? end_date,
      num? total,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      UserModel? customer,
      CompanyModel? company,
      MedicalInsuranceOfferModel? insurance_offer,
      StatusModel? status,
      List<OrderAddonsModel>? addons,
      List<FilesModel>? files,
      MaritalStatusModel? marital_status,
      MedicalTypeModel? type});

  $GenderModelCopyWith<$Res>? get gender;
  $UserModelCopyWith<$Res>? get customer;
  $CompanyModelCopyWith<$Res>? get company;
  $MedicalInsuranceOfferModelCopyWith<$Res>? get insurance_offer;
  $StatusModelCopyWith<$Res>? get status;
  $MaritalStatusModelCopyWith<$Res>? get marital_status;
  $MedicalTypeModelCopyWith<$Res>? get type;
}

/// @nodoc
class _$MedicalOrderModelCopyWithImpl<$Res, $Val extends MedicalOrderModel>
    implements $MedicalOrderModelCopyWith<$Res> {
  _$MedicalOrderModelCopyWithImpl(this._value, this._then);

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
    Object? medical_insurance_id = freezed,
    Object? marital_status_id = freezed,
    Object? medical_insurance_type_id = freezed,
    Object? gender_id = freezed,
    Object? medical_order_status_id = freezed,
    Object? age_form = freezed,
    Object? age_to = freezed,
    Object? medical_insurance_type = freezed,
    Object? gender = freezed,
    Object? price = freezed,
    Object? name = freezed,
    Object? birthdate = freezed,
    Object? age = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
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
    Object? marital_status = freezed,
    Object? type = freezed,
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
      medical_insurance_id: freezed == medical_insurance_id
          ? _value.medical_insurance_id
          : medical_insurance_id // ignore: cast_nullable_to_non_nullable
              as int?,
      marital_status_id: freezed == marital_status_id
          ? _value.marital_status_id
          : marital_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      medical_insurance_type_id: freezed == medical_insurance_type_id
          ? _value.medical_insurance_type_id
          : medical_insurance_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      gender_id: freezed == gender_id
          ? _value.gender_id
          : gender_id // ignore: cast_nullable_to_non_nullable
              as int?,
      medical_order_status_id: freezed == medical_order_status_id
          ? _value.medical_order_status_id
          : medical_order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      age_form: freezed == age_form
          ? _value.age_form
          : age_form // ignore: cast_nullable_to_non_nullable
              as int?,
      age_to: freezed == age_to
          ? _value.age_to
          : age_to // ignore: cast_nullable_to_non_nullable
              as int?,
      medical_insurance_type: freezed == medical_insurance_type
          ? _value.medical_insurance_type
          : medical_insurance_type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderModel?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
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
              as MedicalInsuranceOfferModel?,
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
      marital_status: freezed == marital_status
          ? _value.marital_status
          : marital_status // ignore: cast_nullable_to_non_nullable
              as MaritalStatusModel?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MedicalTypeModel?,
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
  $MedicalInsuranceOfferModelCopyWith<$Res>? get insurance_offer {
    if (_value.insurance_offer == null) {
      return null;
    }

    return $MedicalInsuranceOfferModelCopyWith<$Res>(_value.insurance_offer!,
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
  $MaritalStatusModelCopyWith<$Res>? get marital_status {
    if (_value.marital_status == null) {
      return null;
    }

    return $MaritalStatusModelCopyWith<$Res>(_value.marital_status!, (value) {
      return _then(_value.copyWith(marital_status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MedicalTypeModelCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $MedicalTypeModelCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MedicalOrderModelCopyWith<$Res>
    implements $MedicalOrderModelCopyWith<$Res> {
  factory _$$_MedicalOrderModelCopyWith(_$_MedicalOrderModel value,
          $Res Function(_$_MedicalOrderModel) then) =
      __$$_MedicalOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? medical_insurance_id,
      int? marital_status_id,
      int? medical_insurance_type_id,
      int? gender_id,
      int? medical_order_status_id,
      int? age_form,
      int? age_to,
      String? medical_insurance_type,
      GenderModel? gender,
      num? price,
      String? name,
      String? birthdate,
      int? age,
      String? start_date,
      String? end_date,
      num? total,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      UserModel? customer,
      CompanyModel? company,
      MedicalInsuranceOfferModel? insurance_offer,
      StatusModel? status,
      List<OrderAddonsModel>? addons,
      List<FilesModel>? files,
      MaritalStatusModel? marital_status,
      MedicalTypeModel? type});

  @override
  $GenderModelCopyWith<$Res>? get gender;
  @override
  $UserModelCopyWith<$Res>? get customer;
  @override
  $CompanyModelCopyWith<$Res>? get company;
  @override
  $MedicalInsuranceOfferModelCopyWith<$Res>? get insurance_offer;
  @override
  $StatusModelCopyWith<$Res>? get status;
  @override
  $MaritalStatusModelCopyWith<$Res>? get marital_status;
  @override
  $MedicalTypeModelCopyWith<$Res>? get type;
}

/// @nodoc
class __$$_MedicalOrderModelCopyWithImpl<$Res>
    extends _$MedicalOrderModelCopyWithImpl<$Res, _$_MedicalOrderModel>
    implements _$$_MedicalOrderModelCopyWith<$Res> {
  __$$_MedicalOrderModelCopyWithImpl(
      _$_MedicalOrderModel _value, $Res Function(_$_MedicalOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customer_user_id = freezed,
    Object? company_id = freezed,
    Object? medical_insurance_id = freezed,
    Object? marital_status_id = freezed,
    Object? medical_insurance_type_id = freezed,
    Object? gender_id = freezed,
    Object? medical_order_status_id = freezed,
    Object? age_form = freezed,
    Object? age_to = freezed,
    Object? medical_insurance_type = freezed,
    Object? gender = freezed,
    Object? price = freezed,
    Object? name = freezed,
    Object? birthdate = freezed,
    Object? age = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
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
    Object? marital_status = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_MedicalOrderModel(
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
      medical_insurance_id: freezed == medical_insurance_id
          ? _value.medical_insurance_id
          : medical_insurance_id // ignore: cast_nullable_to_non_nullable
              as int?,
      marital_status_id: freezed == marital_status_id
          ? _value.marital_status_id
          : marital_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      medical_insurance_type_id: freezed == medical_insurance_type_id
          ? _value.medical_insurance_type_id
          : medical_insurance_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      gender_id: freezed == gender_id
          ? _value.gender_id
          : gender_id // ignore: cast_nullable_to_non_nullable
              as int?,
      medical_order_status_id: freezed == medical_order_status_id
          ? _value.medical_order_status_id
          : medical_order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      age_form: freezed == age_form
          ? _value.age_form
          : age_form // ignore: cast_nullable_to_non_nullable
              as int?,
      age_to: freezed == age_to
          ? _value.age_to
          : age_to // ignore: cast_nullable_to_non_nullable
              as int?,
      medical_insurance_type: freezed == medical_insurance_type
          ? _value.medical_insurance_type
          : medical_insurance_type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderModel?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
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
              as MedicalInsuranceOfferModel?,
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
      marital_status: freezed == marital_status
          ? _value.marital_status
          : marital_status // ignore: cast_nullable_to_non_nullable
              as MaritalStatusModel?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MedicalTypeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicalOrderModel implements _MedicalOrderModel {
  const _$_MedicalOrderModel(
      {this.id,
      this.customer_user_id,
      this.company_id,
      this.medical_insurance_id,
      this.marital_status_id,
      this.medical_insurance_type_id,
      this.gender_id,
      this.medical_order_status_id,
      this.age_form,
      this.age_to,
      this.medical_insurance_type,
      this.gender,
      this.price,
      this.name,
      this.birthdate,
      this.age,
      this.start_date,
      this.end_date,
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
      this.marital_status,
      this.type})
      : _addons = addons,
        _files = files;

  factory _$_MedicalOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalOrderModelFromJson(json);

  @override
  final int? id;
  @override
  final int? customer_user_id;
  @override
  final int? company_id;
  @override
  final int? medical_insurance_id;
  @override
  final int? marital_status_id;
  @override
  final int? medical_insurance_type_id;
  @override
  final int? gender_id;
  @override
  final int? medical_order_status_id;
  @override
  final int? age_form;
  @override
  final int? age_to;
  @override
  final String? medical_insurance_type;
  @override
  final GenderModel? gender;
  @override
  final num? price;
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
  final MedicalInsuranceOfferModel? insurance_offer;
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
  final MaritalStatusModel? marital_status;
  @override
  final MedicalTypeModel? type;

  @override
  String toString() {
    return 'MedicalOrderModel(id: $id, customer_user_id: $customer_user_id, company_id: $company_id, medical_insurance_id: $medical_insurance_id, marital_status_id: $marital_status_id, medical_insurance_type_id: $medical_insurance_type_id, gender_id: $gender_id, medical_order_status_id: $medical_order_status_id, age_form: $age_form, age_to: $age_to, medical_insurance_type: $medical_insurance_type, gender: $gender, price: $price, name: $name, birthdate: $birthdate, age: $age, start_date: $start_date, end_date: $end_date, total: $total, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, customer: $customer, company: $company, insurance_offer: $insurance_offer, status: $status, addons: $addons, files: $files, marital_status: $marital_status, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicalOrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer_user_id, customer_user_id) ||
                other.customer_user_id == customer_user_id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.medical_insurance_id, medical_insurance_id) ||
                other.medical_insurance_id == medical_insurance_id) &&
            (identical(other.marital_status_id, marital_status_id) ||
                other.marital_status_id == marital_status_id) &&
            (identical(other.medical_insurance_type_id,
                    medical_insurance_type_id) ||
                other.medical_insurance_type_id == medical_insurance_type_id) &&
            (identical(other.gender_id, gender_id) ||
                other.gender_id == gender_id) &&
            (identical(
                    other.medical_order_status_id, medical_order_status_id) ||
                other.medical_order_status_id == medical_order_status_id) &&
            (identical(other.age_form, age_form) ||
                other.age_form == age_form) &&
            (identical(other.age_to, age_to) || other.age_to == age_to) &&
            (identical(other.medical_insurance_type, medical_insurance_type) ||
                other.medical_insurance_type == medical_insurance_type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.name, name) || other.name == name) &&
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
            (identical(other.company, company) || other.company == company) &&
            (identical(other.insurance_offer, insurance_offer) ||
                other.insurance_offer == insurance_offer) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._addons, _addons) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.marital_status, marital_status) ||
                other.marital_status == marital_status) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        customer_user_id,
        company_id,
        medical_insurance_id,
        marital_status_id,
        medical_insurance_type_id,
        gender_id,
        medical_order_status_id,
        age_form,
        age_to,
        medical_insurance_type,
        gender,
        price,
        name,
        birthdate,
        age,
        start_date,
        end_date,
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
        marital_status,
        type
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicalOrderModelCopyWith<_$_MedicalOrderModel> get copyWith =>
      __$$_MedicalOrderModelCopyWithImpl<_$_MedicalOrderModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicalOrderModelToJson(
      this,
    );
  }
}

abstract class _MedicalOrderModel implements MedicalOrderModel {
  const factory _MedicalOrderModel(
      {final int? id,
      final int? customer_user_id,
      final int? company_id,
      final int? medical_insurance_id,
      final int? marital_status_id,
      final int? medical_insurance_type_id,
      final int? gender_id,
      final int? medical_order_status_id,
      final int? age_form,
      final int? age_to,
      final String? medical_insurance_type,
      final GenderModel? gender,
      final num? price,
      final String? name,
      final String? birthdate,
      final int? age,
      final String? start_date,
      final String? end_date,
      final num? total,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final UserModel? customer,
      final CompanyModel? company,
      final MedicalInsuranceOfferModel? insurance_offer,
      final StatusModel? status,
      final List<OrderAddonsModel>? addons,
      final List<FilesModel>? files,
      final MaritalStatusModel? marital_status,
      final MedicalTypeModel? type}) = _$_MedicalOrderModel;

  factory _MedicalOrderModel.fromJson(Map<String, dynamic> json) =
      _$_MedicalOrderModel.fromJson;

  @override
  int? get id;
  @override
  int? get customer_user_id;
  @override
  int? get company_id;
  @override
  int? get medical_insurance_id;
  @override
  int? get marital_status_id;
  @override
  int? get medical_insurance_type_id;
  @override
  int? get gender_id;
  @override
  int? get medical_order_status_id;
  @override
  int? get age_form;
  @override
  int? get age_to;
  @override
  String? get medical_insurance_type;
  @override
  GenderModel? get gender;
  @override
  num? get price;
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
  MedicalInsuranceOfferModel? get insurance_offer;
  @override
  StatusModel? get status;
  @override
  List<OrderAddonsModel>? get addons;
  @override
  List<FilesModel>? get files;
  @override
  MaritalStatusModel? get marital_status;
  @override
  MedicalTypeModel? get type;
  @override
  @JsonKey(ignore: true)
  _$$_MedicalOrderModelCopyWith<_$_MedicalOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
