// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'domesticoffermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DomesticOfferModel _$DomesticOfferModelFromJson(Map<String, dynamic> json) {
  return _DomesticOfferModel.fromJson(json);
}

/// @nodoc
mixin _$DomesticOfferModel {
  int? get id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  List<AddonsModel>? get addons => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DomesticOfferModelCopyWith<DomesticOfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomesticOfferModelCopyWith<$Res> {
  factory $DomesticOfferModelCopyWith(
          DomesticOfferModel value, $Res Function(DomesticOfferModel) then) =
      _$DomesticOfferModelCopyWithImpl<$Res, DomesticOfferModel>;
  @useResult
  $Res call(
      {int? id,
      int? company_id,
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
class _$DomesticOfferModelCopyWithImpl<$Res, $Val extends DomesticOfferModel>
    implements $DomesticOfferModelCopyWith<$Res> {
  _$DomesticOfferModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_DomesticOfferModelCopyWith<$Res>
    implements $DomesticOfferModelCopyWith<$Res> {
  factory _$$_DomesticOfferModelCopyWith(_$_DomesticOfferModel value,
          $Res Function(_$_DomesticOfferModel) then) =
      __$$_DomesticOfferModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? company_id,
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
class __$$_DomesticOfferModelCopyWithImpl<$Res>
    extends _$DomesticOfferModelCopyWithImpl<$Res, _$_DomesticOfferModel>
    implements _$$_DomesticOfferModelCopyWith<$Res> {
  __$$_DomesticOfferModelCopyWithImpl(
      _$_DomesticOfferModel _value, $Res Function(_$_DomesticOfferModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? company_id = freezed,
    Object? price = freezed,
    Object? active = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? addons = freezed,
    Object? company = freezed,
  }) {
    return _then(_$_DomesticOfferModel(
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
class _$_DomesticOfferModel implements _DomesticOfferModel {
  const _$_DomesticOfferModel(
      {this.id,
      this.company_id,
      this.price,
      this.active,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      final List<AddonsModel>? addons,
      this.company})
      : _addons = addons;

  factory _$_DomesticOfferModel.fromJson(Map<String, dynamic> json) =>
      _$$_DomesticOfferModelFromJson(json);

  @override
  final int? id;
  @override
  final int? company_id;
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
    return 'DomesticOfferModel(id: $id, company_id: $company_id, price: $price, active: $active, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, addons: $addons, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DomesticOfferModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
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
  _$$_DomesticOfferModelCopyWith<_$_DomesticOfferModel> get copyWith =>
      __$$_DomesticOfferModelCopyWithImpl<_$_DomesticOfferModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DomesticOfferModelToJson(
      this,
    );
  }
}

abstract class _DomesticOfferModel implements DomesticOfferModel {
  const factory _DomesticOfferModel(
      {final int? id,
      final int? company_id,
      final num? price,
      final int? active,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final List<AddonsModel>? addons,
      final CompanyModel? company}) = _$_DomesticOfferModel;

  factory _DomesticOfferModel.fromJson(Map<String, dynamic> json) =
      _$_DomesticOfferModel.fromJson;

  @override
  int? get id;
  @override
  int? get company_id;
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
  _$$_DomesticOfferModelCopyWith<_$_DomesticOfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}
