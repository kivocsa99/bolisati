// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personalaccidentordermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalAccidentOrderModel _$PersonalAccidentOrderModelFromJson(
    Map<String, dynamic> json) {
  return _PersonalAccidentOrderModel.fromJson(json);
}

/// @nodoc
mixin _$PersonalAccidentOrderModel {
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalAccidentOrderModelCopyWith<PersonalAccidentOrderModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalAccidentOrderModelCopyWith<$Res> {
  factory $PersonalAccidentOrderModelCopyWith(PersonalAccidentOrderModel value,
          $Res Function(PersonalAccidentOrderModel) then) =
      _$PersonalAccidentOrderModelCopyWithImpl<$Res,
          PersonalAccidentOrderModel>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$PersonalAccidentOrderModelCopyWithImpl<$Res,
        $Val extends PersonalAccidentOrderModel>
    implements $PersonalAccidentOrderModelCopyWith<$Res> {
  _$PersonalAccidentOrderModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_PersonalAccidentOrderModelCopyWith<$Res>
    implements $PersonalAccidentOrderModelCopyWith<$Res> {
  factory _$$_PersonalAccidentOrderModelCopyWith(
          _$_PersonalAccidentOrderModel value,
          $Res Function(_$_PersonalAccidentOrderModel) then) =
      __$$_PersonalAccidentOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$_PersonalAccidentOrderModelCopyWithImpl<$Res>
    extends _$PersonalAccidentOrderModelCopyWithImpl<$Res,
        _$_PersonalAccidentOrderModel>
    implements _$$_PersonalAccidentOrderModelCopyWith<$Res> {
  __$$_PersonalAccidentOrderModelCopyWithImpl(
      _$_PersonalAccidentOrderModel _value,
      $Res Function(_$_PersonalAccidentOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_PersonalAccidentOrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalAccidentOrderModel implements _PersonalAccidentOrderModel {
  const _$_PersonalAccidentOrderModel({this.id});

  factory _$_PersonalAccidentOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalAccidentOrderModelFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'PersonalAccidentOrderModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalAccidentOrderModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalAccidentOrderModelCopyWith<_$_PersonalAccidentOrderModel>
      get copyWith => __$$_PersonalAccidentOrderModelCopyWithImpl<
          _$_PersonalAccidentOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalAccidentOrderModelToJson(
      this,
    );
  }
}

abstract class _PersonalAccidentOrderModel
    implements PersonalAccidentOrderModel {
  const factory _PersonalAccidentOrderModel({final int? id}) =
      _$_PersonalAccidentOrderModel;

  factory _PersonalAccidentOrderModel.fromJson(Map<String, dynamic> json) =
      _$_PersonalAccidentOrderModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalAccidentOrderModelCopyWith<_$_PersonalAccidentOrderModel>
      get copyWith => throw _privateConstructorUsedError;
}
