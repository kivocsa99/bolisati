// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insuranceoffer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InsuranceOfferModel _$InsuranceOfferModelFromJson(Map<String, dynamic> json) {
  return _InsuranceOfferModel.fromJson(json);
}

/// @nodoc
mixin _$InsuranceOfferModel {
  int? get id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsuranceOfferModelCopyWith<InsuranceOfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceOfferModelCopyWith<$Res> {
  factory $InsuranceOfferModelCopyWith(
          InsuranceOfferModel value, $Res Function(InsuranceOfferModel) then) =
      _$InsuranceOfferModelCopyWithImpl<$Res, InsuranceOfferModel>;
  @useResult
  $Res call(
      {int? id,
      int? company_id,
      num? price,
      int? active,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class _$InsuranceOfferModelCopyWithImpl<$Res, $Val extends InsuranceOfferModel>
    implements $InsuranceOfferModelCopyWith<$Res> {
  _$InsuranceOfferModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InsuranceOfferModelCopyWith<$Res>
    implements $InsuranceOfferModelCopyWith<$Res> {
  factory _$$_InsuranceOfferModelCopyWith(_$_InsuranceOfferModel value,
          $Res Function(_$_InsuranceOfferModel) then) =
      __$$_InsuranceOfferModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? company_id,
      num? price,
      int? active,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class __$$_InsuranceOfferModelCopyWithImpl<$Res>
    extends _$InsuranceOfferModelCopyWithImpl<$Res, _$_InsuranceOfferModel>
    implements _$$_InsuranceOfferModelCopyWith<$Res> {
  __$$_InsuranceOfferModelCopyWithImpl(_$_InsuranceOfferModel _value,
      $Res Function(_$_InsuranceOfferModel) _then)
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
  }) {
    return _then(_$_InsuranceOfferModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InsuranceOfferModel implements _InsuranceOfferModel {
  const _$_InsuranceOfferModel(
      {this.id,
      this.company_id,
      this.price,
      this.active,
      this.created_at,
      this.updated_at,
      this.deleted_at});

  factory _$_InsuranceOfferModel.fromJson(Map<String, dynamic> json) =>
      _$$_InsuranceOfferModelFromJson(json);

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

  @override
  String toString() {
    return 'InsuranceOfferModel(id: $id, company_id: $company_id, price: $price, active: $active, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsuranceOfferModel &&
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
                other.deleted_at == deleted_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, company_id, price, active,
      created_at, updated_at, deleted_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsuranceOfferModelCopyWith<_$_InsuranceOfferModel> get copyWith =>
      __$$_InsuranceOfferModelCopyWithImpl<_$_InsuranceOfferModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsuranceOfferModelToJson(
      this,
    );
  }
}

abstract class _InsuranceOfferModel implements InsuranceOfferModel {
  const factory _InsuranceOfferModel(
      {final int? id,
      final int? company_id,
      final num? price,
      final int? active,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$_InsuranceOfferModel;

  factory _InsuranceOfferModel.fromJson(Map<String, dynamic> json) =
      _$_InsuranceOfferModel.fromJson;

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
  @JsonKey(ignore: true)
  _$$_InsuranceOfferModelCopyWith<_$_InsuranceOfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}
