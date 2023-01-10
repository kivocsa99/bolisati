// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personaloffermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalOfferModel _$PersonalOfferModelFromJson(Map<String, dynamic> json) {
  return _PersonalOfferModel.fromJson(json);
}

/// @nodoc
mixin _$PersonalOfferModel {
  int? get id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  int? get age_from => throw _privateConstructorUsedError;
  int? get age_to => throw _privateConstructorUsedError;
  int? get personal_accident_type_id => throw _privateConstructorUsedError;
  double? get rate => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  List<AddonsModel>? get addons => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalOfferModelCopyWith<PersonalOfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalOfferModelCopyWith<$Res> {
  factory $PersonalOfferModelCopyWith(
          PersonalOfferModel value, $Res Function(PersonalOfferModel) then) =
      _$PersonalOfferModelCopyWithImpl<$Res, PersonalOfferModel>;
  @useResult
  $Res call(
      {int? id,
      int? company_id,
      int? price,
      int? active,
      int? age_from,
      int? age_to,
      int? personal_accident_type_id,
      double? rate,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      List<AddonsModel>? addons,
      CompanyModel? company});

  $CompanyModelCopyWith<$Res>? get company;
}

/// @nodoc
class _$PersonalOfferModelCopyWithImpl<$Res, $Val extends PersonalOfferModel>
    implements $PersonalOfferModelCopyWith<$Res> {
  _$PersonalOfferModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? company_id = freezed,
    Object? price = freezed,
    Object? active = freezed,
    Object? age_from = freezed,
    Object? age_to = freezed,
    Object? personal_accident_type_id = freezed,
    Object? rate = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      age_from: freezed == age_from
          ? _value.age_from
          : age_from // ignore: cast_nullable_to_non_nullable
              as int?,
      age_to: freezed == age_to
          ? _value.age_to
          : age_to // ignore: cast_nullable_to_non_nullable
              as int?,
      personal_accident_type_id: freezed == personal_accident_type_id
          ? _value.personal_accident_type_id
          : personal_accident_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$_PersonalOfferModelCopyWith<$Res>
    implements $PersonalOfferModelCopyWith<$Res> {
  factory _$$_PersonalOfferModelCopyWith(_$_PersonalOfferModel value,
          $Res Function(_$_PersonalOfferModel) then) =
      __$$_PersonalOfferModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? company_id,
      int? price,
      int? active,
      int? age_from,
      int? age_to,
      int? personal_accident_type_id,
      double? rate,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      List<AddonsModel>? addons,
      CompanyModel? company});

  @override
  $CompanyModelCopyWith<$Res>? get company;
}

/// @nodoc
class __$$_PersonalOfferModelCopyWithImpl<$Res>
    extends _$PersonalOfferModelCopyWithImpl<$Res, _$_PersonalOfferModel>
    implements _$$_PersonalOfferModelCopyWith<$Res> {
  __$$_PersonalOfferModelCopyWithImpl(
      _$_PersonalOfferModel _value, $Res Function(_$_PersonalOfferModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? company_id = freezed,
    Object? price = freezed,
    Object? active = freezed,
    Object? age_from = freezed,
    Object? age_to = freezed,
    Object? personal_accident_type_id = freezed,
    Object? rate = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? addons = freezed,
    Object? company = freezed,
  }) {
    return _then(_$_PersonalOfferModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      company_id: freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      age_from: freezed == age_from
          ? _value.age_from
          : age_from // ignore: cast_nullable_to_non_nullable
              as int?,
      age_to: freezed == age_to
          ? _value.age_to
          : age_to // ignore: cast_nullable_to_non_nullable
              as int?,
      personal_accident_type_id: freezed == personal_accident_type_id
          ? _value.personal_accident_type_id
          : personal_accident_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$_PersonalOfferModel implements _PersonalOfferModel {
  const _$_PersonalOfferModel(
      {this.id,
      this.company_id,
      this.price,
      this.active,
      this.age_from,
      this.age_to,
      this.personal_accident_type_id,
      this.rate,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      final List<AddonsModel>? addons,
      this.company})
      : _addons = addons;

  factory _$_PersonalOfferModel.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalOfferModelFromJson(json);

  @override
  final int? id;
  @override
  final int? company_id;
  @override
  final int? price;
  @override
  final int? active;
  @override
  final int? age_from;
  @override
  final int? age_to;
  @override
  final int? personal_accident_type_id;
  @override
  final double? rate;
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
    return 'PersonalOfferModel(id: $id, company_id: $company_id, price: $price, active: $active, age_from: $age_from, age_to: $age_to, personal_accident_type_id: $personal_accident_type_id, rate: $rate, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, addons: $addons, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalOfferModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.age_from, age_from) ||
                other.age_from == age_from) &&
            (identical(other.age_to, age_to) || other.age_to == age_to) &&
            (identical(other.personal_accident_type_id,
                    personal_accident_type_id) ||
                other.personal_accident_type_id == personal_accident_type_id) &&
            (identical(other.rate, rate) || other.rate == rate) &&
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
      price,
      active,
      age_from,
      age_to,
      personal_accident_type_id,
      rate,
      created_at,
      updated_at,
      deleted_at,
      const DeepCollectionEquality().hash(_addons),
      company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalOfferModelCopyWith<_$_PersonalOfferModel> get copyWith =>
      __$$_PersonalOfferModelCopyWithImpl<_$_PersonalOfferModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalOfferModelToJson(
      this,
    );
  }
}

abstract class _PersonalOfferModel implements PersonalOfferModel {
  const factory _PersonalOfferModel(
      {final int? id,
      final int? company_id,
      final int? price,
      final int? active,
      final int? age_from,
      final int? age_to,
      final int? personal_accident_type_id,
      final double? rate,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final List<AddonsModel>? addons,
      final CompanyModel? company}) = _$_PersonalOfferModel;

  factory _PersonalOfferModel.fromJson(Map<String, dynamic> json) =
      _$_PersonalOfferModel.fromJson;

  @override
  int? get id;
  @override
  int? get company_id;
  @override
  int? get price;
  @override
  int? get active;
  @override
  int? get age_from;
  @override
  int? get age_to;
  @override
  int? get personal_accident_type_id;
  @override
  double? get rate;
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
  _$$_PersonalOfferModelCopyWith<_$_PersonalOfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}
