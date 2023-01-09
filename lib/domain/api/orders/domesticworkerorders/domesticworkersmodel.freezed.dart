// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'domesticworkersmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DomesticWorkersOrderModel _$DomesticWorkersOrderModelFromJson(
    Map<String, dynamic> json) {
  return _DomesticWorkersOrderModel.fromJson(json);
}

/// @nodoc
mixin _$DomesticWorkersOrderModel {
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DomesticWorkersOrderModelCopyWith<DomesticWorkersOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomesticWorkersOrderModelCopyWith<$Res> {
  factory $DomesticWorkersOrderModelCopyWith(DomesticWorkersOrderModel value,
          $Res Function(DomesticWorkersOrderModel) then) =
      _$DomesticWorkersOrderModelCopyWithImpl<$Res, DomesticWorkersOrderModel>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$DomesticWorkersOrderModelCopyWithImpl<$Res,
        $Val extends DomesticWorkersOrderModel>
    implements $DomesticWorkersOrderModelCopyWith<$Res> {
  _$DomesticWorkersOrderModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_DomesticWorkersOrderModelCopyWith<$Res>
    implements $DomesticWorkersOrderModelCopyWith<$Res> {
  factory _$$_DomesticWorkersOrderModelCopyWith(
          _$_DomesticWorkersOrderModel value,
          $Res Function(_$_DomesticWorkersOrderModel) then) =
      __$$_DomesticWorkersOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$_DomesticWorkersOrderModelCopyWithImpl<$Res>
    extends _$DomesticWorkersOrderModelCopyWithImpl<$Res,
        _$_DomesticWorkersOrderModel>
    implements _$$_DomesticWorkersOrderModelCopyWith<$Res> {
  __$$_DomesticWorkersOrderModelCopyWithImpl(
      _$_DomesticWorkersOrderModel _value,
      $Res Function(_$_DomesticWorkersOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_DomesticWorkersOrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DomesticWorkersOrderModel implements _DomesticWorkersOrderModel {
  const _$_DomesticWorkersOrderModel({this.id});

  factory _$_DomesticWorkersOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_DomesticWorkersOrderModelFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'DomesticWorkersOrderModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DomesticWorkersOrderModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DomesticWorkersOrderModelCopyWith<_$_DomesticWorkersOrderModel>
      get copyWith => __$$_DomesticWorkersOrderModelCopyWithImpl<
          _$_DomesticWorkersOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DomesticWorkersOrderModelToJson(
      this,
    );
  }
}

abstract class _DomesticWorkersOrderModel implements DomesticWorkersOrderModel {
  const factory _DomesticWorkersOrderModel({final int? id}) =
      _$_DomesticWorkersOrderModel;

  factory _DomesticWorkersOrderModel.fromJson(Map<String, dynamic> json) =
      _$_DomesticWorkersOrderModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DomesticWorkersOrderModelCopyWith<_$_DomesticWorkersOrderModel>
      get copyWith => throw _privateConstructorUsedError;
}
