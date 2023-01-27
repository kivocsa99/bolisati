// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdfmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PdfModel _$PdfModelFromJson(Map<String, dynamic> json) {
  return _PdfModel.fromJson(json);
}

/// @nodoc
mixin _$PdfModel {
  int? get id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  int? get insurance_type_id => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PdfModelCopyWith<PdfModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfModelCopyWith<$Res> {
  factory $PdfModelCopyWith(PdfModel value, $Res Function(PdfModel) then) =
      _$PdfModelCopyWithImpl<$Res, PdfModel>;
  @useResult
  $Res call(
      {int? id,
      int? company_id,
      int? insurance_type_id,
      String? file,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class _$PdfModelCopyWithImpl<$Res, $Val extends PdfModel>
    implements $PdfModelCopyWith<$Res> {
  _$PdfModelCopyWithImpl(this._value, this._then);

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
    Object? file = freezed,
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
      insurance_type_id: freezed == insurance_type_id
          ? _value.insurance_type_id
          : insurance_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_PdfModelCopyWith<$Res> implements $PdfModelCopyWith<$Res> {
  factory _$$_PdfModelCopyWith(
          _$_PdfModel value, $Res Function(_$_PdfModel) then) =
      __$$_PdfModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? company_id,
      int? insurance_type_id,
      String? file,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class __$$_PdfModelCopyWithImpl<$Res>
    extends _$PdfModelCopyWithImpl<$Res, _$_PdfModel>
    implements _$$_PdfModelCopyWith<$Res> {
  __$$_PdfModelCopyWithImpl(
      _$_PdfModel _value, $Res Function(_$_PdfModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? company_id = freezed,
    Object? insurance_type_id = freezed,
    Object? file = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_$_PdfModel(
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
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
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
class _$_PdfModel implements _PdfModel {
  const _$_PdfModel(
      {this.id,
      this.company_id,
      this.insurance_type_id,
      this.file,
      this.created_at,
      this.updated_at,
      this.deleted_at});

  factory _$_PdfModel.fromJson(Map<String, dynamic> json) =>
      _$$_PdfModelFromJson(json);

  @override
  final int? id;
  @override
  final int? company_id;
  @override
  final int? insurance_type_id;
  @override
  final String? file;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;

  @override
  String toString() {
    return 'PdfModel(id: $id, company_id: $company_id, insurance_type_id: $insurance_type_id, file: $file, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PdfModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.insurance_type_id, insurance_type_id) ||
                other.insurance_type_id == insurance_type_id) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, company_id,
      insurance_type_id, file, created_at, updated_at, deleted_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PdfModelCopyWith<_$_PdfModel> get copyWith =>
      __$$_PdfModelCopyWithImpl<_$_PdfModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PdfModelToJson(
      this,
    );
  }
}

abstract class _PdfModel implements PdfModel {
  const factory _PdfModel(
      {final int? id,
      final int? company_id,
      final int? insurance_type_id,
      final String? file,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$_PdfModel;

  factory _PdfModel.fromJson(Map<String, dynamic> json) = _$_PdfModel.fromJson;

  @override
  int? get id;
  @override
  int? get company_id;
  @override
  int? get insurance_type_id;
  @override
  String? get file;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  @JsonKey(ignore: true)
  _$$_PdfModelCopyWith<_$_PdfModel> get copyWith =>
      throw _privateConstructorUsedError;
}
