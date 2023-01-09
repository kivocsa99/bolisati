// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicaltypemodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicalTypeModel _$MedicalTypeModelFromJson(Map<String, dynamic> json) {
  return _MedicalTypeModel.fromJson(json);
}

/// @nodoc
mixin _$MedicalTypeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalTypeModelCopyWith<MedicalTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalTypeModelCopyWith<$Res> {
  factory $MedicalTypeModelCopyWith(
          MedicalTypeModel value, $Res Function(MedicalTypeModel) then) =
      _$MedicalTypeModelCopyWithImpl<$Res, MedicalTypeModel>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? name,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class _$MedicalTypeModelCopyWithImpl<$Res, $Val extends MedicalTypeModel>
    implements $MedicalTypeModelCopyWith<$Res> {
  _$MedicalTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_MedicalTypeModelCopyWith<$Res>
    implements $MedicalTypeModelCopyWith<$Res> {
  factory _$$_MedicalTypeModelCopyWith(
          _$_MedicalTypeModel value, $Res Function(_$_MedicalTypeModel) then) =
      __$$_MedicalTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? name,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class __$$_MedicalTypeModelCopyWithImpl<$Res>
    extends _$MedicalTypeModelCopyWithImpl<$Res, _$_MedicalTypeModel>
    implements _$$_MedicalTypeModelCopyWith<$Res> {
  __$$_MedicalTypeModelCopyWithImpl(
      _$_MedicalTypeModel _value, $Res Function(_$_MedicalTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_$_MedicalTypeModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_MedicalTypeModel implements _MedicalTypeModel {
  const _$_MedicalTypeModel(
      {this.id,
      this.code,
      this.name,
      this.created_at,
      this.updated_at,
      this.deleted_at});

  factory _$_MedicalTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalTypeModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? name;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;

  @override
  String toString() {
    return 'MedicalTypeModel(id: $id, code: $code, name: $name, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicalTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
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
      runtimeType, id, code, name, created_at, updated_at, deleted_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicalTypeModelCopyWith<_$_MedicalTypeModel> get copyWith =>
      __$$_MedicalTypeModelCopyWithImpl<_$_MedicalTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicalTypeModelToJson(
      this,
    );
  }
}

abstract class _MedicalTypeModel implements MedicalTypeModel {
  const factory _MedicalTypeModel(
      {final int? id,
      final String? code,
      final String? name,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$_MedicalTypeModel;

  factory _MedicalTypeModel.fromJson(Map<String, dynamic> json) =
      _$_MedicalTypeModel.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get name;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  @JsonKey(ignore: true)
  _$$_MedicalTypeModelCopyWith<_$_MedicalTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
