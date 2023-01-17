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
  int? get customer_user_id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  int? get educational_type_id => throw _privateConstructorUsedError;
  int? get personal_accident_type_id => throw _privateConstructorUsedError;
  int? get educational_order_status_id => throw _privateConstructorUsedError;
  String? get educational_type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get end_date => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  int? get monthly_fee => throw _privateConstructorUsedError;
  int? get university_fee => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  num? get rate => throw _privateConstructorUsedError;
  num? get total_without_addons => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  UserModel? get customer => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;
  RetTypeModel? get type => throw _privateConstructorUsedError;
  List<OrderAddonsModel>? get addons => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  List<FilesModel>? get files => throw _privateConstructorUsedError;
  List<ChildModel>? get kids => throw _privateConstructorUsedError;

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
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? educational_type_id,
      int? personal_accident_type_id,
      int? educational_order_status_id,
      String? educational_type,
      String? name,
      String? end_date,
      String? birthdate,
      int? age,
      int? monthly_fee,
      int? university_fee,
      num? total,
      num? rate,
      num? total_without_addons,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      UserModel? customer,
      CompanyModel? company,
      RetTypeModel? type,
      List<OrderAddonsModel>? addons,
      StatusModel? status,
      List<FilesModel>? files,
      List<ChildModel>? kids});

  $UserModelCopyWith<$Res>? get customer;
  $CompanyModelCopyWith<$Res>? get company;
  $RetTypeModelCopyWith<$Res>? get type;
  $StatusModelCopyWith<$Res>? get status;
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
    Object? customer_user_id = freezed,
    Object? company_id = freezed,
    Object? educational_type_id = freezed,
    Object? personal_accident_type_id = freezed,
    Object? educational_order_status_id = freezed,
    Object? educational_type = freezed,
    Object? name = freezed,
    Object? end_date = freezed,
    Object? birthdate = freezed,
    Object? age = freezed,
    Object? monthly_fee = freezed,
    Object? university_fee = freezed,
    Object? total = freezed,
    Object? rate = freezed,
    Object? total_without_addons = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? customer = freezed,
    Object? company = freezed,
    Object? type = freezed,
    Object? addons = freezed,
    Object? status = freezed,
    Object? files = freezed,
    Object? kids = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      customer_user_id: freezed == customer_user_id
          ? _value.customer_user_id
          : customer_user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      company_id: freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as int?,
      educational_type_id: freezed == educational_type_id
          ? _value.educational_type_id
          : educational_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      personal_accident_type_id: freezed == personal_accident_type_id
          ? _value.personal_accident_type_id
          : personal_accident_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      educational_order_status_id: freezed == educational_order_status_id
          ? _value.educational_order_status_id
          : educational_order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      educational_type: freezed == educational_type
          ? _value.educational_type
          : educational_type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      monthly_fee: freezed == monthly_fee
          ? _value.monthly_fee
          : monthly_fee // ignore: cast_nullable_to_non_nullable
              as int?,
      university_fee: freezed == university_fee
          ? _value.university_fee
          : university_fee // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num?,
      total_without_addons: freezed == total_without_addons
          ? _value.total_without_addons
          : total_without_addons // ignore: cast_nullable_to_non_nullable
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
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RetTypeModel?,
      addons: freezed == addons
          ? _value.addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<OrderAddonsModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
      kids: freezed == kids
          ? _value.kids
          : kids // ignore: cast_nullable_to_non_nullable
              as List<ChildModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyModelCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyModelCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RetTypeModelCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $RetTypeModelCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusModelCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusModelCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
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
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? educational_type_id,
      int? personal_accident_type_id,
      int? educational_order_status_id,
      String? educational_type,
      String? name,
      String? end_date,
      String? birthdate,
      int? age,
      int? monthly_fee,
      int? university_fee,
      num? total,
      num? rate,
      num? total_without_addons,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      UserModel? customer,
      CompanyModel? company,
      RetTypeModel? type,
      List<OrderAddonsModel>? addons,
      StatusModel? status,
      List<FilesModel>? files,
      List<ChildModel>? kids});

  @override
  $UserModelCopyWith<$Res>? get customer;
  @override
  $CompanyModelCopyWith<$Res>? get company;
  @override
  $RetTypeModelCopyWith<$Res>? get type;
  @override
  $StatusModelCopyWith<$Res>? get status;
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
    Object? customer_user_id = freezed,
    Object? company_id = freezed,
    Object? educational_type_id = freezed,
    Object? personal_accident_type_id = freezed,
    Object? educational_order_status_id = freezed,
    Object? educational_type = freezed,
    Object? name = freezed,
    Object? end_date = freezed,
    Object? birthdate = freezed,
    Object? age = freezed,
    Object? monthly_fee = freezed,
    Object? university_fee = freezed,
    Object? total = freezed,
    Object? rate = freezed,
    Object? total_without_addons = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? customer = freezed,
    Object? company = freezed,
    Object? type = freezed,
    Object? addons = freezed,
    Object? status = freezed,
    Object? files = freezed,
    Object? kids = freezed,
  }) {
    return _then(_$_EducationalOrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      customer_user_id: freezed == customer_user_id
          ? _value.customer_user_id
          : customer_user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      company_id: freezed == company_id
          ? _value.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as int?,
      educational_type_id: freezed == educational_type_id
          ? _value.educational_type_id
          : educational_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      personal_accident_type_id: freezed == personal_accident_type_id
          ? _value.personal_accident_type_id
          : personal_accident_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      educational_order_status_id: freezed == educational_order_status_id
          ? _value.educational_order_status_id
          : educational_order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      educational_type: freezed == educational_type
          ? _value.educational_type
          : educational_type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      monthly_fee: freezed == monthly_fee
          ? _value.monthly_fee
          : monthly_fee // ignore: cast_nullable_to_non_nullable
              as int?,
      university_fee: freezed == university_fee
          ? _value.university_fee
          : university_fee // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num?,
      total_without_addons: freezed == total_without_addons
          ? _value.total_without_addons
          : total_without_addons // ignore: cast_nullable_to_non_nullable
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
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RetTypeModel?,
      addons: freezed == addons
          ? _value._addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<OrderAddonsModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
      kids: freezed == kids
          ? _value._kids
          : kids // ignore: cast_nullable_to_non_nullable
              as List<ChildModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EducationalOrderModel implements _EducationalOrderModel {
  const _$_EducationalOrderModel(
      {this.id,
      this.customer_user_id,
      this.company_id,
      this.educational_type_id,
      this.personal_accident_type_id,
      this.educational_order_status_id,
      this.educational_type,
      this.name,
      this.end_date,
      this.birthdate,
      this.age,
      this.monthly_fee,
      this.university_fee,
      this.total,
      this.rate,
      this.total_without_addons,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.customer,
      this.company,
      this.type,
      final List<OrderAddonsModel>? addons,
      this.status,
      final List<FilesModel>? files,
      final List<ChildModel>? kids})
      : _addons = addons,
        _files = files,
        _kids = kids;

  factory _$_EducationalOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_EducationalOrderModelFromJson(json);

  @override
  final int? id;
  @override
  final int? customer_user_id;
  @override
  final int? company_id;
  @override
  final int? educational_type_id;
  @override
  final int? personal_accident_type_id;
  @override
  final int? educational_order_status_id;
  @override
  final String? educational_type;
  @override
  final String? name;
  @override
  final String? end_date;
  @override
  final String? birthdate;
  @override
  final int? age;
  @override
  final int? monthly_fee;
  @override
  final int? university_fee;
  @override
  final num? total;
  @override
  final num? rate;
  @override
  final num? total_without_addons;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  @override
  final UserModel? customer;
  @override
  final CompanyModel? company;
  @override
  final RetTypeModel? type;
  final List<OrderAddonsModel>? _addons;
  @override
  List<OrderAddonsModel>? get addons {
    final value = _addons;
    if (value == null) return null;
    if (_addons is EqualUnmodifiableListView) return _addons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final StatusModel? status;
  final List<FilesModel>? _files;
  @override
  List<FilesModel>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ChildModel>? _kids;
  @override
  List<ChildModel>? get kids {
    final value = _kids;
    if (value == null) return null;
    if (_kids is EqualUnmodifiableListView) return _kids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EducationalOrderModel(id: $id, customer_user_id: $customer_user_id, company_id: $company_id, educational_type_id: $educational_type_id, personal_accident_type_id: $personal_accident_type_id, educational_order_status_id: $educational_order_status_id, educational_type: $educational_type, name: $name, end_date: $end_date, birthdate: $birthdate, age: $age, monthly_fee: $monthly_fee, university_fee: $university_fee, total: $total, rate: $rate, total_without_addons: $total_without_addons, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, customer: $customer, company: $company, type: $type, addons: $addons, status: $status, files: $files, kids: $kids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EducationalOrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer_user_id, customer_user_id) ||
                other.customer_user_id == customer_user_id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.educational_type_id, educational_type_id) ||
                other.educational_type_id == educational_type_id) &&
            (identical(other.personal_accident_type_id,
                    personal_accident_type_id) ||
                other.personal_accident_type_id == personal_accident_type_id) &&
            (identical(other.educational_order_status_id,
                    educational_order_status_id) ||
                other.educational_order_status_id ==
                    educational_order_status_id) &&
            (identical(other.educational_type, educational_type) ||
                other.educational_type == educational_type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.monthly_fee, monthly_fee) ||
                other.monthly_fee == monthly_fee) &&
            (identical(other.university_fee, university_fee) ||
                other.university_fee == university_fee) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.total_without_addons, total_without_addons) ||
                other.total_without_addons == total_without_addons) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._addons, _addons) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality().equals(other._kids, _kids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        customer_user_id,
        company_id,
        educational_type_id,
        personal_accident_type_id,
        educational_order_status_id,
        educational_type,
        name,
        end_date,
        birthdate,
        age,
        monthly_fee,
        university_fee,
        total,
        rate,
        total_without_addons,
        created_at,
        updated_at,
        deleted_at,
        customer,
        company,
        type,
        const DeepCollectionEquality().hash(_addons),
        status,
        const DeepCollectionEquality().hash(_files),
        const DeepCollectionEquality().hash(_kids)
      ]);

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
  const factory _EducationalOrderModel(
      {final int? id,
      final int? customer_user_id,
      final int? company_id,
      final int? educational_type_id,
      final int? personal_accident_type_id,
      final int? educational_order_status_id,
      final String? educational_type,
      final String? name,
      final String? end_date,
      final String? birthdate,
      final int? age,
      final int? monthly_fee,
      final int? university_fee,
      final num? total,
      final num? rate,
      final num? total_without_addons,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final UserModel? customer,
      final CompanyModel? company,
      final RetTypeModel? type,
      final List<OrderAddonsModel>? addons,
      final StatusModel? status,
      final List<FilesModel>? files,
      final List<ChildModel>? kids}) = _$_EducationalOrderModel;

  factory _EducationalOrderModel.fromJson(Map<String, dynamic> json) =
      _$_EducationalOrderModel.fromJson;

  @override
  int? get id;
  @override
  int? get customer_user_id;
  @override
  int? get company_id;
  @override
  int? get educational_type_id;
  @override
  int? get personal_accident_type_id;
  @override
  int? get educational_order_status_id;
  @override
  String? get educational_type;
  @override
  String? get name;
  @override
  String? get end_date;
  @override
  String? get birthdate;
  @override
  int? get age;
  @override
  int? get monthly_fee;
  @override
  int? get university_fee;
  @override
  num? get total;
  @override
  num? get rate;
  @override
  num? get total_without_addons;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  UserModel? get customer;
  @override
  CompanyModel? get company;
  @override
  RetTypeModel? get type;
  @override
  List<OrderAddonsModel>? get addons;
  @override
  StatusModel? get status;
  @override
  List<FilesModel>? get files;
  @override
  List<ChildModel>? get kids;
  @override
  @JsonKey(ignore: true)
  _$$_EducationalOrderModelCopyWith<_$_EducationalOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
