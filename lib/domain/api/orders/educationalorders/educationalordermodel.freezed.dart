// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'educationalordermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EducationalOrderModel _$EducationalOrderModelFromJson(
    Map<String, dynamic> json) {
  return _EducationalOrderModel.fromJson(json);
}

/// @nodoc
mixin _$EducationalOrderModel {
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EducationalOrderModelCopyWith<EducationalOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationalOrderModelCopyWith<$Res> {
  factory $EducationalOrderModelCopyWith(EducationalOrderModel value,
          $Res Function(EducationalOrderModel) then) =
      _$EducationalOrderModelCopyWithImpl<$Res, EducationalOrderModel>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$EducationalOrderModelCopyWithImpl<$Res,
        $Val extends EducationalOrderModel>
    implements $EducationalOrderModelCopyWith<$Res> {
  _$EducationalOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EducationalOrderModelCopyWith<$Res>
    implements $EducationalOrderModelCopyWith<$Res> {
  factory _$$_EducationalOrderModelCopyWith(_$_EducationalOrderModel value,
          $Res Function(_$_EducationalOrderModel) then) =
      __$$_EducationalOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$_EducationalOrderModelCopyWithImpl<$Res>
    extends _$EducationalOrderModelCopyWithImpl<$Res, _$_EducationalOrderModel>
    implements _$$_EducationalOrderModelCopyWith<$Res> {
  __$$_EducationalOrderModelCopyWithImpl(_$_EducationalOrderModel _value,
      $Res Function(_$_EducationalOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_EducationalOrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EducationalOrderModel implements _EducationalOrderModel {
  const _$_EducationalOrderModel({this.id});

  factory _$_EducationalOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_EducationalOrderModelFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'EducationalOrderModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EducationalOrderModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EducationalOrderModelCopyWith<_$_EducationalOrderModel> get copyWith =>
      __$$_EducationalOrderModelCopyWithImpl<_$_EducationalOrderModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EducationalOrderModelToJson(
      this,
    );
  }
}

abstract class _EducationalOrderModel implements EducationalOrderModel {
  const factory _EducationalOrderModel({final int? id}) =
      _$_EducationalOrderModel;

  factory _EducationalOrderModel.fromJson(Map<String, dynamic> json) =
      _$_EducationalOrderModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_EducationalOrderModelCopyWith<_$_EducationalOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
