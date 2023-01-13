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
  int? get customer_user_id => throw _privateConstructorUsedError;
  int? get company_id => throw _privateConstructorUsedError;
  int? get domestic_worker_insurance_id => throw _privateConstructorUsedError;
  int? get domestic_worker_order_status_id =>
      throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get national_id_number => throw _privateConstructorUsedError;
  String? get worker_name => throw _privateConstructorUsedError;
  String? get start_date => throw _privateConstructorUsedError;
  String? get end_date => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  InsuranceOfferModel? get insurance_offer =>
      throw _privateConstructorUsedError;
  UserModel? get customer => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  List<OrderAddonsModel>? get addons => throw _privateConstructorUsedError;
  List<FilesModel>? get files => throw _privateConstructorUsedError;

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
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? domestic_worker_insurance_id,
      int? domestic_worker_order_status_id,
      String? name,
      String? national_id_number,
      String? worker_name,
      String? start_date,
      String? end_date,
      num? total,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      InsuranceOfferModel? insurance_offer,
      UserModel? customer,
      CompanyModel? company,
      StatusModel? status,
      List<OrderAddonsModel>? addons,
      List<FilesModel>? files});

  $InsuranceOfferModelCopyWith<$Res>? get insurance_offer;
  $UserModelCopyWith<$Res>? get customer;
  $CompanyModelCopyWith<$Res>? get company;
  $StatusModelCopyWith<$Res>? get status;
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
    Object? customer_user_id = freezed,
    Object? company_id = freezed,
    Object? domestic_worker_insurance_id = freezed,
    Object? domestic_worker_order_status_id = freezed,
    Object? name = freezed,
    Object? national_id_number = freezed,
    Object? worker_name = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? total = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? insurance_offer = freezed,
    Object? customer = freezed,
    Object? company = freezed,
    Object? status = freezed,
    Object? addons = freezed,
    Object? files = freezed,
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
      domestic_worker_insurance_id: freezed == domestic_worker_insurance_id
          ? _value.domestic_worker_insurance_id
          : domestic_worker_insurance_id // ignore: cast_nullable_to_non_nullable
              as int?,
      domestic_worker_order_status_id: freezed ==
              domestic_worker_order_status_id
          ? _value.domestic_worker_order_status_id
          : domestic_worker_order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      national_id_number: freezed == national_id_number
          ? _value.national_id_number
          : national_id_number // ignore: cast_nullable_to_non_nullable
              as String?,
      worker_name: freezed == worker_name
          ? _value.worker_name
          : worker_name // ignore: cast_nullable_to_non_nullable
              as String?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
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
      insurance_offer: freezed == insurance_offer
          ? _value.insurance_offer
          : insurance_offer // ignore: cast_nullable_to_non_nullable
              as InsuranceOfferModel?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      addons: freezed == addons
          ? _value.addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<OrderAddonsModel>?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InsuranceOfferModelCopyWith<$Res>? get insurance_offer {
    if (_value.insurance_offer == null) {
      return null;
    }

    return $InsuranceOfferModelCopyWith<$Res>(_value.insurance_offer!, (value) {
      return _then(_value.copyWith(insurance_offer: value) as $Val);
    });
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
abstract class _$$_DomesticWorkersOrderModelCopyWith<$Res>
    implements $DomesticWorkersOrderModelCopyWith<$Res> {
  factory _$$_DomesticWorkersOrderModelCopyWith(
          _$_DomesticWorkersOrderModel value,
          $Res Function(_$_DomesticWorkersOrderModel) then) =
      __$$_DomesticWorkersOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? customer_user_id,
      int? company_id,
      int? domestic_worker_insurance_id,
      int? domestic_worker_order_status_id,
      String? name,
      String? national_id_number,
      String? worker_name,
      String? start_date,
      String? end_date,
      num? total,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      InsuranceOfferModel? insurance_offer,
      UserModel? customer,
      CompanyModel? company,
      StatusModel? status,
      List<OrderAddonsModel>? addons,
      List<FilesModel>? files});

  @override
  $InsuranceOfferModelCopyWith<$Res>? get insurance_offer;
  @override
  $UserModelCopyWith<$Res>? get customer;
  @override
  $CompanyModelCopyWith<$Res>? get company;
  @override
  $StatusModelCopyWith<$Res>? get status;
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
    Object? customer_user_id = freezed,
    Object? company_id = freezed,
    Object? domestic_worker_insurance_id = freezed,
    Object? domestic_worker_order_status_id = freezed,
    Object? name = freezed,
    Object? national_id_number = freezed,
    Object? worker_name = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? total = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? insurance_offer = freezed,
    Object? customer = freezed,
    Object? company = freezed,
    Object? status = freezed,
    Object? addons = freezed,
    Object? files = freezed,
  }) {
    return _then(_$_DomesticWorkersOrderModel(
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
      domestic_worker_insurance_id: freezed == domestic_worker_insurance_id
          ? _value.domestic_worker_insurance_id
          : domestic_worker_insurance_id // ignore: cast_nullable_to_non_nullable
              as int?,
      domestic_worker_order_status_id: freezed ==
              domestic_worker_order_status_id
          ? _value.domestic_worker_order_status_id
          : domestic_worker_order_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      national_id_number: freezed == national_id_number
          ? _value.national_id_number
          : national_id_number // ignore: cast_nullable_to_non_nullable
              as String?,
      worker_name: freezed == worker_name
          ? _value.worker_name
          : worker_name // ignore: cast_nullable_to_non_nullable
              as String?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
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
      insurance_offer: freezed == insurance_offer
          ? _value.insurance_offer
          : insurance_offer // ignore: cast_nullable_to_non_nullable
              as InsuranceOfferModel?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      addons: freezed == addons
          ? _value._addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<OrderAddonsModel>?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DomesticWorkersOrderModel implements _DomesticWorkersOrderModel {
  const _$_DomesticWorkersOrderModel(
      {this.id,
      this.customer_user_id,
      this.company_id,
      this.domestic_worker_insurance_id,
      this.domestic_worker_order_status_id,
      this.name,
      this.national_id_number,
      this.worker_name,
      this.start_date,
      this.end_date,
      this.total,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.insurance_offer,
      this.customer,
      this.company,
      this.status,
      final List<OrderAddonsModel>? addons,
      final List<FilesModel>? files})
      : _addons = addons,
        _files = files;

  factory _$_DomesticWorkersOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_DomesticWorkersOrderModelFromJson(json);

  @override
  final int? id;
  @override
  final int? customer_user_id;
  @override
  final int? company_id;
  @override
  final int? domestic_worker_insurance_id;
  @override
  final int? domestic_worker_order_status_id;
  @override
  final String? name;
  @override
  final String? national_id_number;
  @override
  final String? worker_name;
  @override
  final String? start_date;
  @override
  final String? end_date;
  @override
  final num? total;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  @override
  final InsuranceOfferModel? insurance_offer;
  @override
  final UserModel? customer;
  @override
  final CompanyModel? company;
  @override
  final StatusModel? status;
  final List<OrderAddonsModel>? _addons;
  @override
  List<OrderAddonsModel>? get addons {
    final value = _addons;
    if (value == null) return null;
    if (_addons is EqualUnmodifiableListView) return _addons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FilesModel>? _files;
  @override
  List<FilesModel>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DomesticWorkersOrderModel(id: $id, customer_user_id: $customer_user_id, company_id: $company_id, domestic_worker_insurance_id: $domestic_worker_insurance_id, domestic_worker_order_status_id: $domestic_worker_order_status_id, name: $name, national_id_number: $national_id_number, worker_name: $worker_name, start_date: $start_date, end_date: $end_date, total: $total, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, insurance_offer: $insurance_offer, customer: $customer, company: $company, status: $status, addons: $addons, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DomesticWorkersOrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer_user_id, customer_user_id) ||
                other.customer_user_id == customer_user_id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.domestic_worker_insurance_id,
                    domestic_worker_insurance_id) ||
                other.domestic_worker_insurance_id ==
                    domestic_worker_insurance_id) &&
            (identical(other.domestic_worker_order_status_id,
                    domestic_worker_order_status_id) ||
                other.domestic_worker_order_status_id ==
                    domestic_worker_order_status_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.national_id_number, national_id_number) ||
                other.national_id_number == national_id_number) &&
            (identical(other.worker_name, worker_name) ||
                other.worker_name == worker_name) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.insurance_offer, insurance_offer) ||
                other.insurance_offer == insurance_offer) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._addons, _addons) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        customer_user_id,
        company_id,
        domestic_worker_insurance_id,
        domestic_worker_order_status_id,
        name,
        national_id_number,
        worker_name,
        start_date,
        end_date,
        total,
        created_at,
        updated_at,
        deleted_at,
        insurance_offer,
        customer,
        company,
        status,
        const DeepCollectionEquality().hash(_addons),
        const DeepCollectionEquality().hash(_files)
      ]);

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
  const factory _DomesticWorkersOrderModel(
      {final int? id,
      final int? customer_user_id,
      final int? company_id,
      final int? domestic_worker_insurance_id,
      final int? domestic_worker_order_status_id,
      final String? name,
      final String? national_id_number,
      final String? worker_name,
      final String? start_date,
      final String? end_date,
      final num? total,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final InsuranceOfferModel? insurance_offer,
      final UserModel? customer,
      final CompanyModel? company,
      final StatusModel? status,
      final List<OrderAddonsModel>? addons,
      final List<FilesModel>? files}) = _$_DomesticWorkersOrderModel;

  factory _DomesticWorkersOrderModel.fromJson(Map<String, dynamic> json) =
      _$_DomesticWorkersOrderModel.fromJson;

  @override
  int? get id;
  @override
  int? get customer_user_id;
  @override
  int? get company_id;
  @override
  int? get domestic_worker_insurance_id;
  @override
  int? get domestic_worker_order_status_id;
  @override
  String? get name;
  @override
  String? get national_id_number;
  @override
  String? get worker_name;
  @override
  String? get start_date;
  @override
  String? get end_date;
  @override
  num? get total;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  InsuranceOfferModel? get insurance_offer;
  @override
  UserModel? get customer;
  @override
  CompanyModel? get company;
  @override
  StatusModel? get status;
  @override
  List<OrderAddonsModel>? get addons;
  @override
  List<FilesModel>? get files;
  @override
  @JsonKey(ignore: true)
  _$$_DomesticWorkersOrderModelCopyWith<_$_DomesticWorkersOrderModel>
      get copyWith => throw _privateConstructorUsedError;
}
