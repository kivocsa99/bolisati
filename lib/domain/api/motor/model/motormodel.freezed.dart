// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'motormodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MotorOffersModel _$MotorOffersModelFromJson(Map<String, dynamic> json) {
  return _MotorOffersModel.fromJson(json);
}

/// @nodoc
mixin _$MotorOffersModel {
  int? get id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  num? get price_from => throw _privateConstructorUsedError;
  num? get price_to => throw _privateConstructorUsedError;
  int? get fixed => throw _privateConstructorUsedError;
  num? get percentage => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  List<AddonsModel>? get addons => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MotorOffersModelCopyWith<MotorOffersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotorOffersModelCopyWith<$Res> {
  factory $MotorOffersModelCopyWith(
          MotorOffersModel value, $Res Function(MotorOffersModel) then) =
      _$MotorOffersModelCopyWithImpl<$Res, MotorOffersModel>;
  @useResult
  $Res call(
      {int? id,
      int? company_id,
      num? price_from,
      num? price_to,
      int? fixed,
      num? percentage,
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
class _$MotorOffersModelCopyWithImpl<$Res, $Val extends MotorOffersModel>
    implements $MotorOffersModelCopyWith<$Res> {
  _$MotorOffersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? company_id = freezed,
    Object? price_from = freezed,
    Object? price_to = freezed,
    Object? fixed = freezed,
    Object? percentage = freezed,
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
abstract class _$$_MotorOffersModelCopyWith<$Res>
    implements $MotorOffersModelCopyWith<$Res> {
  factory _$$_MotorOffersModelCopyWith(
          _$_MotorOffersModel value, $Res Function(_$_MotorOffersModel) then) =
      __$$_MotorOffersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? company_id,
      num? price_from,
      num? price_to,
      int? fixed,
      num? percentage,
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
class __$$_MotorOffersModelCopyWithImpl<$Res>
    extends _$MotorOffersModelCopyWithImpl<$Res, _$_MotorOffersModel>
    implements _$$_MotorOffersModelCopyWith<$Res> {
  __$$_MotorOffersModelCopyWithImpl(
      _$_MotorOffersModel _value, $Res Function(_$_MotorOffersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? company_id = freezed,
    Object? price_from = freezed,
    Object? price_to = freezed,
    Object? fixed = freezed,
    Object? percentage = freezed,
    Object? price = freezed,
    Object? active = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? addons = freezed,
    Object? company = freezed,
  }) {
    return _then(_$_MotorOffersModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      company_id: freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_MotorOffersModel implements _MotorOffersModel {
  const _$_MotorOffersModel(
      {this.id,
      this.company_id,
      this.price_from,
      this.price_to,
      this.fixed,
      this.percentage,
      this.price,
      this.active,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      final List<AddonsModel>? addons,
      this.company})
      : _addons = addons;

  factory _$_MotorOffersModel.fromJson(Map<String, dynamic> json) =>
      _$$_MotorOffersModelFromJson(json);

  @override
  final int? id;
  @override
  final int? company_id;
  @override
  final num? price_from;
  @override
  final num? price_to;
  @override
  final int? fixed;
  @override
  final num? percentage;
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
    return 'MotorOffersModel(id: $id, company_id: $company_id, price_from: $price_from, price_to: $price_to, fixed: $fixed, percentage: $percentage, price: $price, active: $active, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, addons: $addons, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MotorOffersModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.price_from, price_from) ||
                other.price_from == price_from) &&
            (identical(other.price_to, price_to) ||
                other.price_to == price_to) &&
            (identical(other.fixed, fixed) || other.fixed == fixed) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
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
      price_from,
      price_to,
      fixed,
      percentage,
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
  _$$_MotorOffersModelCopyWith<_$_MotorOffersModel> get copyWith =>
      __$$_MotorOffersModelCopyWithImpl<_$_MotorOffersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MotorOffersModelToJson(
      this,
    );
  }
}

abstract class _MotorOffersModel implements MotorOffersModel {
  const factory _MotorOffersModel(
      {final int? id,
      final int? company_id,
      final num? price_from,
      final num? price_to,
      final int? fixed,
      final num? percentage,
      final num? price,
      final int? active,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final List<AddonsModel>? addons,
      final CompanyModel? company}) = _$_MotorOffersModel;

  factory _MotorOffersModel.fromJson(Map<String, dynamic> json) =
      _$_MotorOffersModel.fromJson;

  @override
  int? get id;
  @override
  int? get company_id;
  @override
  num? get price_from;
  @override
  num? get price_to;
  @override
  int? get fixed;
  @override
  num? get percentage;
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
  _$$_MotorOffersModelCopyWith<_$_MotorOffersModel> get copyWith =>
      throw _privateConstructorUsedError;
}
