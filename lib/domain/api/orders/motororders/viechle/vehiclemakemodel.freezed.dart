// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehiclemakemodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleMakeModel _$VehicleMakeModelFromJson(Map<String, dynamic> json) {
  return _VehicleMakeModel.fromJson(json);
}

/// @nodoc
mixin _$VehicleMakeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleMakeModelCopyWith<VehicleMakeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleMakeModelCopyWith<$Res> {
  factory $VehicleMakeModelCopyWith(
          VehicleMakeModel value, $Res Function(VehicleMakeModel) then) =
      _$VehicleMakeModelCopyWithImpl<$Res, VehicleMakeModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      String? logo,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class _$VehicleMakeModelCopyWithImpl<$Res, $Val extends VehicleMakeModel>
    implements $VehicleMakeModelCopyWith<$Res> {
  _$VehicleMakeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? logo = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_VehicleMakeModelCopyWith<$Res>
    implements $VehicleMakeModelCopyWith<$Res> {
  factory _$$_VehicleMakeModelCopyWith(
          _$_VehicleMakeModel value, $Res Function(_$_VehicleMakeModel) then) =
      __$$_VehicleMakeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? code,
      String? logo,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class __$$_VehicleMakeModelCopyWithImpl<$Res>
    extends _$VehicleMakeModelCopyWithImpl<$Res, _$_VehicleMakeModel>
    implements _$$_VehicleMakeModelCopyWith<$Res> {
  __$$_VehicleMakeModelCopyWithImpl(
      _$_VehicleMakeModel _value, $Res Function(_$_VehicleMakeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? logo = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_$_VehicleMakeModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_VehicleMakeModel implements _VehicleMakeModel {
  const _$_VehicleMakeModel(
      {this.id,
      this.name,
      this.code,
      this.logo,
      this.created_at,
      this.updated_at,
      this.deleted_at});

  factory _$_VehicleMakeModel.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleMakeModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? logo;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;

  @override
  String toString() {
    return 'VehicleMakeModel(id: $id, name: $name, code: $code, logo: $logo, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleMakeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, code, logo, created_at, updated_at, deleted_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleMakeModelCopyWith<_$_VehicleMakeModel> get copyWith =>
      __$$_VehicleMakeModelCopyWithImpl<_$_VehicleMakeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleMakeModelToJson(
      this,
    );
  }
}

abstract class _VehicleMakeModel implements VehicleMakeModel {
  const factory _VehicleMakeModel(
      {final int? id,
      final String? name,
      final String? code,
      final String? logo,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$_VehicleMakeModel;

  factory _VehicleMakeModel.fromJson(Map<String, dynamic> json) =
      _$_VehicleMakeModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get logo;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleMakeModelCopyWith<_$_VehicleMakeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
