// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failurereasonsmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FailureReasonsModel _$FailureReasonsModelFromJson(Map<String, dynamic> json) {
  return _FailureReasonsModel.fromJson(json);
}

/// @nodoc
mixin _$FailureReasonsModel {
  int? get medical_insurance_id => throw _privateConstructorUsedError;
  int? get marital_status_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get birth_date => throw _privateConstructorUsedError;
  String? get start_date => throw _privateConstructorUsedError;
  String? get end_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureReasonsModelCopyWith<FailureReasonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureReasonsModelCopyWith<$Res> {
  factory $FailureReasonsModelCopyWith(
          FailureReasonsModel value, $Res Function(FailureReasonsModel) then) =
      _$FailureReasonsModelCopyWithImpl<$Res, FailureReasonsModel>;
  @useResult
  $Res call(
      {int? medical_insurance_id,
      int? marital_status_id,
      String? name,
      String? birth_date,
      String? start_date,
      String? end_date});
}

/// @nodoc
class _$FailureReasonsModelCopyWithImpl<$Res, $Val extends FailureReasonsModel>
    implements $FailureReasonsModelCopyWith<$Res> {
  _$FailureReasonsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medical_insurance_id = freezed,
    Object? marital_status_id = freezed,
    Object? name = freezed,
    Object? birth_date = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
  }) {
    return _then(_value.copyWith(
      medical_insurance_id: freezed == medical_insurance_id
          ? _value.medical_insurance_id
          : medical_insurance_id // ignore: cast_nullable_to_non_nullable
              as int?,
      marital_status_id: freezed == marital_status_id
          ? _value.marital_status_id
          : marital_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birth_date: freezed == birth_date
          ? _value.birth_date
          : birth_date // ignore: cast_nullable_to_non_nullable
              as String?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FailureReasonsModelCopyWith<$Res>
    implements $FailureReasonsModelCopyWith<$Res> {
  factory _$$_FailureReasonsModelCopyWith(_$_FailureReasonsModel value,
          $Res Function(_$_FailureReasonsModel) then) =
      __$$_FailureReasonsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? medical_insurance_id,
      int? marital_status_id,
      String? name,
      String? birth_date,
      String? start_date,
      String? end_date});
}

/// @nodoc
class __$$_FailureReasonsModelCopyWithImpl<$Res>
    extends _$FailureReasonsModelCopyWithImpl<$Res, _$_FailureReasonsModel>
    implements _$$_FailureReasonsModelCopyWith<$Res> {
  __$$_FailureReasonsModelCopyWithImpl(_$_FailureReasonsModel _value,
      $Res Function(_$_FailureReasonsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medical_insurance_id = freezed,
    Object? marital_status_id = freezed,
    Object? name = freezed,
    Object? birth_date = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
  }) {
    return _then(_$_FailureReasonsModel(
      medical_insurance_id: freezed == medical_insurance_id
          ? _value.medical_insurance_id
          : medical_insurance_id // ignore: cast_nullable_to_non_nullable
              as int?,
      marital_status_id: freezed == marital_status_id
          ? _value.marital_status_id
          : marital_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birth_date: freezed == birth_date
          ? _value.birth_date
          : birth_date // ignore: cast_nullable_to_non_nullable
              as String?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FailureReasonsModel implements _FailureReasonsModel {
  const _$_FailureReasonsModel(
      {this.medical_insurance_id,
      this.marital_status_id,
      this.name,
      this.birth_date,
      this.start_date,
      this.end_date});

  factory _$_FailureReasonsModel.fromJson(Map<String, dynamic> json) =>
      _$$_FailureReasonsModelFromJson(json);

  @override
  final int? medical_insurance_id;
  @override
  final int? marital_status_id;
  @override
  final String? name;
  @override
  final String? birth_date;
  @override
  final String? start_date;
  @override
  final String? end_date;

  @override
  String toString() {
    return 'FailureReasonsModel(medical_insurance_id: $medical_insurance_id, marital_status_id: $marital_status_id, name: $name, birth_date: $birth_date, start_date: $start_date, end_date: $end_date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureReasonsModel &&
            (identical(other.medical_insurance_id, medical_insurance_id) ||
                other.medical_insurance_id == medical_insurance_id) &&
            (identical(other.marital_status_id, marital_status_id) ||
                other.marital_status_id == marital_status_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birth_date, birth_date) ||
                other.birth_date == birth_date) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, medical_insurance_id,
      marital_status_id, name, birth_date, start_date, end_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureReasonsModelCopyWith<_$_FailureReasonsModel> get copyWith =>
      __$$_FailureReasonsModelCopyWithImpl<_$_FailureReasonsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FailureReasonsModelToJson(
      this,
    );
  }
}

abstract class _FailureReasonsModel implements FailureReasonsModel {
  const factory _FailureReasonsModel(
      {final int? medical_insurance_id,
      final int? marital_status_id,
      final String? name,
      final String? birth_date,
      final String? start_date,
      final String? end_date}) = _$_FailureReasonsModel;

  factory _FailureReasonsModel.fromJson(Map<String, dynamic> json) =
      _$_FailureReasonsModel.fromJson;

  @override
  int? get medical_insurance_id;
  @override
  int? get marital_status_id;
  @override
  String? get name;
  @override
  String? get birth_date;
  @override
  String? get start_date;
  @override
  String? get end_date;
  @override
  @JsonKey(ignore: true)
  _$$_FailureReasonsModelCopyWith<_$_FailureReasonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
