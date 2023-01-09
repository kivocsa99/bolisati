// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'petordermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetOrderModel _$PetOrderModelFromJson(Map<String, dynamic> json) {
  return _PetOrderModel.fromJson(json);
}

/// @nodoc
mixin _$PetOrderModel {
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetOrderModelCopyWith<PetOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetOrderModelCopyWith<$Res> {
  factory $PetOrderModelCopyWith(
          PetOrderModel value, $Res Function(PetOrderModel) then) =
      _$PetOrderModelCopyWithImpl<$Res, PetOrderModel>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$PetOrderModelCopyWithImpl<$Res, $Val extends PetOrderModel>
    implements $PetOrderModelCopyWith<$Res> {
  _$PetOrderModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_PetOrderModelCopyWith<$Res>
    implements $PetOrderModelCopyWith<$Res> {
  factory _$$_PetOrderModelCopyWith(
          _$_PetOrderModel value, $Res Function(_$_PetOrderModel) then) =
      __$$_PetOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$_PetOrderModelCopyWithImpl<$Res>
    extends _$PetOrderModelCopyWithImpl<$Res, _$_PetOrderModel>
    implements _$$_PetOrderModelCopyWith<$Res> {
  __$$_PetOrderModelCopyWithImpl(
      _$_PetOrderModel _value, $Res Function(_$_PetOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_PetOrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetOrderModel implements _PetOrderModel {
  const _$_PetOrderModel({this.id});

  factory _$_PetOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_PetOrderModelFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'PetOrderModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetOrderModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PetOrderModelCopyWith<_$_PetOrderModel> get copyWith =>
      __$$_PetOrderModelCopyWithImpl<_$_PetOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetOrderModelToJson(
      this,
    );
  }
}

abstract class _PetOrderModel implements PetOrderModel {
  const factory _PetOrderModel({final int? id}) = _$_PetOrderModel;

  factory _PetOrderModel.fromJson(Map<String, dynamic> json) =
      _$_PetOrderModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_PetOrderModelCopyWith<_$_PetOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
