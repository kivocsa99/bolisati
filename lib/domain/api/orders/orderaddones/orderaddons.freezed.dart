// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orderaddons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderAddonsModel _$OrderAddonsModelFromJson(Map<String, dynamic> json) {
  return _OrderAddonsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderAddonsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get belongable_type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderAddonsModelCopyWith<OrderAddonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderAddonsModelCopyWith<$Res> {
  factory $OrderAddonsModelCopyWith(
          OrderAddonsModel value, $Res Function(OrderAddonsModel) then) =
      _$OrderAddonsModelCopyWithImpl<$Res, OrderAddonsModel>;
  @useResult
  $Res call(
      {int? id,
      String? belongable_type,
      String? name,
      num? price,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class _$OrderAddonsModelCopyWithImpl<$Res, $Val extends OrderAddonsModel>
    implements $OrderAddonsModelCopyWith<$Res> {
  _$OrderAddonsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? belongable_type = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      belongable_type: freezed == belongable_type
          ? _value.belongable_type
          : belongable_type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderAddonsModelCopyWith<$Res>
    implements $OrderAddonsModelCopyWith<$Res> {
  factory _$$_OrderAddonsModelCopyWith(
          _$_OrderAddonsModel value, $Res Function(_$_OrderAddonsModel) then) =
      __$$_OrderAddonsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? belongable_type,
      String? name,
      num? price,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class __$$_OrderAddonsModelCopyWithImpl<$Res>
    extends _$OrderAddonsModelCopyWithImpl<$Res, _$_OrderAddonsModel>
    implements _$$_OrderAddonsModelCopyWith<$Res> {
  __$$_OrderAddonsModelCopyWithImpl(
      _$_OrderAddonsModel _value, $Res Function(_$_OrderAddonsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? belongable_type = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_$_OrderAddonsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      belongable_type: freezed == belongable_type
          ? _value.belongable_type
          : belongable_type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderAddonsModel implements _OrderAddonsModel {
  const _$_OrderAddonsModel(
      {this.id,
      this.belongable_type,
      this.name,
      this.price,
      this.created_at,
      this.updated_at,
      this.deleted_at});

  factory _$_OrderAddonsModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderAddonsModelFromJson(json);

  @override
  final int? id;
  @override
  final String? belongable_type;
  @override
  final String? name;
  @override
  final num? price;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;

  @override
  String toString() {
    return 'OrderAddonsModel(id: $id, belongable_type: $belongable_type, name: $name, price: $price, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderAddonsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.belongable_type, belongable_type) ||
                other.belongable_type == belongable_type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, belongable_type, name, price,
      created_at, updated_at, deleted_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderAddonsModelCopyWith<_$_OrderAddonsModel> get copyWith =>
      __$$_OrderAddonsModelCopyWithImpl<_$_OrderAddonsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderAddonsModelToJson(
      this,
    );
  }
}

abstract class _OrderAddonsModel implements OrderAddonsModel {
  const factory _OrderAddonsModel(
      {final int? id,
      final String? belongable_type,
      final String? name,
      final num? price,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$_OrderAddonsModel;

  factory _OrderAddonsModel.fromJson(Map<String, dynamic> json) =
      _$_OrderAddonsModel.fromJson;

  @override
  int? get id;
  @override
  String? get belongable_type;
  @override
  String? get name;
  @override
  num? get price;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  @JsonKey(ignore: true)
  _$$_OrderAddonsModelCopyWith<_$_OrderAddonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
