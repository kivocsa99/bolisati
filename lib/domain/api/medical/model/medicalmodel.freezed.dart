// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicalmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicalOffersModel _$MedicalOffersModelFromJson(Map<String, dynamic> json) {
  return _MedicalOffersModel.fromJson(json);
}

/// @nodoc
mixin _$MedicalOffersModel {
  int? get id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  int? get age_form => throw _privateConstructorUsedError;
  int? get age_to => throw _privateConstructorUsedError;
  int? get medical_insurance_type_id => throw _privateConstructorUsedError;
  int? get gender_id => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  List<AddonsModel>? get addons => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalOffersModelCopyWith<MedicalOffersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalOffersModelCopyWith<$Res> {
  factory $MedicalOffersModelCopyWith(
          MedicalOffersModel value, $Res Function(MedicalOffersModel) then) =
      _$MedicalOffersModelCopyWithImpl<$Res, MedicalOffersModel>;
  @useResult
  $Res call(
      {int? id,
      int? company_id,
      int? age_form,
      int? age_to,
      int? medical_insurance_type_id,
      int? gender_id,
      num? price,
      int? active,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      List<AddonsModel>? addons,
      CompanyModel? company});

  $CompanyModelCopyWith<$Res>? get company;
}

/// @nodoc
class _$MedicalOffersModelCopyWithImpl<$Res, $Val extends MedicalOffersModel>
    implements $MedicalOffersModelCopyWith<$Res> {
  _$MedicalOffersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? company_id = freezed,
    Object? age_form = freezed,
    Object? age_to = freezed,
    Object? medical_insurance_type_id = freezed,
    Object? gender_id = freezed,
    Object? price = freezed,
    Object? active = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? addons = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      company_id: freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as int?,
      age_form: freezed == age_form
          ? _value.age_form
          : age_form // ignore: cast_nullable_to_non_nullable
              as int?,
      age_to: freezed == age_to
          ? _value.age_to
          : age_to // ignore: cast_nullable_to_non_nullable
              as int?,
      medical_insurance_type_id: freezed == medical_insurance_type_id
          ? _value.medical_insurance_type_id
          : medical_insurance_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      gender_id: freezed == gender_id
          ? _value.gender_id
          : gender_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
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
      addons: freezed == addons
          ? _value.addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<AddonsModel>?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$_MedicalOffersModelCopyWith<$Res>
    implements $MedicalOffersModelCopyWith<$Res> {
  factory _$$_MedicalOffersModelCopyWith(_$_MedicalOffersModel value,
          $Res Function(_$_MedicalOffersModel) then) =
      __$$_MedicalOffersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? company_id,
      int? age_form,
      int? age_to,
      int? medical_insurance_type_id,
      int? gender_id,
      num? price,
      int? active,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      List<AddonsModel>? addons,
      CompanyModel? company});

  @override
  $CompanyModelCopyWith<$Res>? get company;
}

/// @nodoc
class __$$_MedicalOffersModelCopyWithImpl<$Res>
    extends _$MedicalOffersModelCopyWithImpl<$Res, _$_MedicalOffersModel>
    implements _$$_MedicalOffersModelCopyWith<$Res> {
  __$$_MedicalOffersModelCopyWithImpl(
      _$_MedicalOffersModel _value, $Res Function(_$_MedicalOffersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? company_id = freezed,
    Object? age_form = freezed,
    Object? age_to = freezed,
    Object? medical_insurance_type_id = freezed,
    Object? gender_id = freezed,
    Object? price = freezed,
    Object? active = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? addons = freezed,
    Object? company = freezed,
  }) {
    return _then(_$_MedicalOffersModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      company_id: freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as int?,
      age_form: freezed == age_form
          ? _value.age_form
          : age_form // ignore: cast_nullable_to_non_nullable
              as int?,
      age_to: freezed == age_to
          ? _value.age_to
          : age_to // ignore: cast_nullable_to_non_nullable
              as int?,
      medical_insurance_type_id: freezed == medical_insurance_type_id
          ? _value.medical_insurance_type_id
          : medical_insurance_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      gender_id: freezed == gender_id
          ? _value.gender_id
          : gender_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
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
      addons: freezed == addons
          ? _value._addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<AddonsModel>?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicalOffersModel implements _MedicalOffersModel {
  const _$_MedicalOffersModel(
      {this.id,
      this.company_id,
      this.age_form,
      this.age_to,
      this.medical_insurance_type_id,
      this.gender_id,
      this.price,
      this.active,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      final List<AddonsModel>? addons,
      this.company})
      : _addons = addons;

  factory _$_MedicalOffersModel.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalOffersModelFromJson(json);

  @override
  final int? id;
  @override
  final int? company_id;
  @override
  final int? age_form;
  @override
  final int? age_to;
  @override
  final int? medical_insurance_type_id;
  @override
  final int? gender_id;
  @override
  final num? price;
  @override
  final int? active;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  final List<AddonsModel>? _addons;
  @override
  List<AddonsModel>? get addons {
    final value = _addons;
    if (value == null) return null;
    if (_addons is EqualUnmodifiableListView) return _addons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CompanyModel? company;

  @override
  String toString() {
    return 'MedicalOffersModel(id: $id, company_id: $company_id, age_form: $age_form, age_to: $age_to, medical_insurance_type_id: $medical_insurance_type_id, gender_id: $gender_id, price: $price, active: $active, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, addons: $addons, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicalOffersModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.age_form, age_form) ||
                other.age_form == age_form) &&
            (identical(other.age_to, age_to) || other.age_to == age_to) &&
            (identical(other.medical_insurance_type_id,
                    medical_insurance_type_id) ||
                other.medical_insurance_type_id == medical_insurance_type_id) &&
            (identical(other.gender_id, gender_id) ||
                other.gender_id == gender_id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            const DeepCollectionEquality().equals(other._addons, _addons) &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      company_id,
      age_form,
      age_to,
      medical_insurance_type_id,
      gender_id,
      price,
      active,
      created_at,
      updated_at,
      deleted_at,
      const DeepCollectionEquality().hash(_addons),
      company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicalOffersModelCopyWith<_$_MedicalOffersModel> get copyWith =>
      __$$_MedicalOffersModelCopyWithImpl<_$_MedicalOffersModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicalOffersModelToJson(
      this,
    );
  }
}

abstract class _MedicalOffersModel implements MedicalOffersModel {
  const factory _MedicalOffersModel(
      {final int? id,
      final int? company_id,
      final int? age_form,
      final int? age_to,
      final int? medical_insurance_type_id,
      final int? gender_id,
      final num? price,
      final int? active,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final List<AddonsModel>? addons,
      final CompanyModel? company}) = _$_MedicalOffersModel;

  factory _MedicalOffersModel.fromJson(Map<String, dynamic> json) =
      _$_MedicalOffersModel.fromJson;

  @override
  int? get id;
  @override
  int? get company_id;
  @override
  int? get age_form;
  @override
  int? get age_to;
  @override
  int? get medical_insurance_type_id;
  @override
  int? get gender_id;
  @override
  num? get price;
  @override
  int? get active;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  List<AddonsModel>? get addons;
  @override
  CompanyModel? get company;
  @override
  @JsonKey(ignore: true)
  _$$_MedicalOffersModelCopyWith<_$_MedicalOffersModel> get copyWith =>
      throw _privateConstructorUsedError;
}
