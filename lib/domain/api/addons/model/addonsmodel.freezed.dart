// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addonsmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddonsModel _$AddonsModelFromJson(Map<String, dynamic> json) {
  return _AddonsModel.fromJson(json);
}

/// @nodoc
mixin _$AddonsModel {
  int? get id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  int? get insurance_type_id => throw _privateConstructorUsedError;
  int? get addon_id => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  AddonModel? get addon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddonsModelCopyWith<AddonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddonsModelCopyWith<$Res> {
  factory $AddonsModelCopyWith(
          AddonsModel value, $Res Function(AddonsModel) then) =
      _$AddonsModelCopyWithImpl<$Res, AddonsModel>;
  @useResult
  $Res call(
      {int? id,
      int? company_id,
      int? insurance_type_id,
      int? addon_id,
      num? price,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      AddonModel? addon});

  $AddonModelCopyWith<$Res>? get addon;
}

/// @nodoc
class _$AddonsModelCopyWithImpl<$Res, $Val extends AddonsModel>
    implements $AddonsModelCopyWith<$Res> {
  _$AddonsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? company_id = freezed,
    Object? insurance_type_id = freezed,
    Object? addon_id = freezed,
    Object? price = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? addon = freezed,
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
      insurance_type_id: freezed == insurance_type_id
          ? _value.insurance_type_id
          : insurance_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      addon_id: freezed == addon_id
          ? _value.addon_id
          : addon_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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
      addon: freezed == addon
          ? _value.addon
          : addon // ignore: cast_nullable_to_non_nullable
              as AddonModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddonModelCopyWith<$Res>? get addon {
    if (_value.addon == null) {
      return null;
    }

    return $AddonModelCopyWith<$Res>(_value.addon!, (value) {
      return _then(_value.copyWith(addon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddonsModelCopyWith<$Res>
    implements $AddonsModelCopyWith<$Res> {
  factory _$$_AddonsModelCopyWith(
          _$_AddonsModel value, $Res Function(_$_AddonsModel) then) =
      __$$_AddonsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? company_id,
      int? insurance_type_id,
      int? addon_id,
      num? price,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      AddonModel? addon});

  @override
  $AddonModelCopyWith<$Res>? get addon;
}

/// @nodoc
class __$$_AddonsModelCopyWithImpl<$Res>
    extends _$AddonsModelCopyWithImpl<$Res, _$_AddonsModel>
    implements _$$_AddonsModelCopyWith<$Res> {
  __$$_AddonsModelCopyWithImpl(
      _$_AddonsModel _value, $Res Function(_$_AddonsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? company_id = freezed,
    Object? insurance_type_id = freezed,
    Object? addon_id = freezed,
    Object? price = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? addon = freezed,
  }) {
    return _then(_$_AddonsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      company_id: freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as int?,
      insurance_type_id: freezed == insurance_type_id
          ? _value.insurance_type_id
          : insurance_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      addon_id: freezed == addon_id
          ? _value.addon_id
          : addon_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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
      addon: freezed == addon
          ? _value.addon
          : addon // ignore: cast_nullable_to_non_nullable
              as AddonModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddonsModel implements _AddonsModel {
  const _$_AddonsModel(
      {this.id,
      this.company_id,
      this.insurance_type_id,
      this.addon_id,
      this.price,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.addon});

  factory _$_AddonsModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddonsModelFromJson(json);

  @override
  final int? id;
  @override
  final int? company_id;
  @override
  final int? insurance_type_id;
  @override
  final int? addon_id;
  @override
  final num? price;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  @override
  final AddonModel? addon;

  @override
  String toString() {
    return 'AddonsModel(id: $id, company_id: $company_id, insurance_type_id: $insurance_type_id, addon_id: $addon_id, price: $price, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, addon: $addon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddonsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.insurance_type_id, insurance_type_id) ||
                other.insurance_type_id == insurance_type_id) &&
            (identical(other.addon_id, addon_id) ||
                other.addon_id == addon_id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.addon, addon) || other.addon == addon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      company_id,
      insurance_type_id,
      addon_id,
      price,
      created_at,
      updated_at,
      deleted_at,
      addon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddonsModelCopyWith<_$_AddonsModel> get copyWith =>
      __$$_AddonsModelCopyWithImpl<_$_AddonsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddonsModelToJson(
      this,
    );
  }
}

abstract class _AddonsModel implements AddonsModel {
  const factory _AddonsModel(
      {final int? id,
      final int? company_id,
      final int? insurance_type_id,
      final int? addon_id,
      final num? price,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final AddonModel? addon}) = _$_AddonsModel;

  factory _AddonsModel.fromJson(Map<String, dynamic> json) =
      _$_AddonsModel.fromJson;

  @override
  int? get id;
  @override
  int? get company_id;
  @override
  int? get insurance_type_id;
  @override
  int? get addon_id;
  @override
  num? get price;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  AddonModel? get addon;
  @override
  @JsonKey(ignore: true)
  _$$_AddonsModelCopyWith<_$_AddonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
