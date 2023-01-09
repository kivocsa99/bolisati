// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retirementordermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RetirementOrderModel _$RetirementOrderModelFromJson(Map<String, dynamic> json) {
  return _RetirementOrderModel.fromJson(json);
}

/// @nodoc
mixin _$RetirementOrderModel {
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RetirementOrderModelCopyWith<RetirementOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetirementOrderModelCopyWith<$Res> {
  factory $RetirementOrderModelCopyWith(RetirementOrderModel value,
          $Res Function(RetirementOrderModel) then) =
      _$RetirementOrderModelCopyWithImpl<$Res, RetirementOrderModel>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$RetirementOrderModelCopyWithImpl<$Res,
        $Val extends RetirementOrderModel>
    implements $RetirementOrderModelCopyWith<$Res> {
  _$RetirementOrderModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_RetirementOrderModelCopyWith<$Res>
    implements $RetirementOrderModelCopyWith<$Res> {
  factory _$$_RetirementOrderModelCopyWith(_$_RetirementOrderModel value,
          $Res Function(_$_RetirementOrderModel) then) =
      __$$_RetirementOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$_RetirementOrderModelCopyWithImpl<$Res>
    extends _$RetirementOrderModelCopyWithImpl<$Res, _$_RetirementOrderModel>
    implements _$$_RetirementOrderModelCopyWith<$Res> {
  __$$_RetirementOrderModelCopyWithImpl(_$_RetirementOrderModel _value,
      $Res Function(_$_RetirementOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_RetirementOrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RetirementOrderModel implements _RetirementOrderModel {
  const _$_RetirementOrderModel({this.id});

  factory _$_RetirementOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_RetirementOrderModelFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'RetirementOrderModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RetirementOrderModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RetirementOrderModelCopyWith<_$_RetirementOrderModel> get copyWith =>
      __$$_RetirementOrderModelCopyWithImpl<_$_RetirementOrderModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RetirementOrderModelToJson(
      this,
    );
  }
}

abstract class _RetirementOrderModel implements RetirementOrderModel {
  const factory _RetirementOrderModel({final int? id}) =
      _$_RetirementOrderModel;

  factory _RetirementOrderModel.fromJson(Map<String, dynamic> json) =
      _$_RetirementOrderModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_RetirementOrderModelCopyWith<_$_RetirementOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
