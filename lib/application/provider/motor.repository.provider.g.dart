// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motor.repository.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$getcarsHash() => r'3206c3ef694306a3460bf9d808ab543fce2f8f39';

/// See also [getcars].
class GetcarsProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  GetcarsProvider(
    this.token,
  ) : super(
          (ref) => getcars(
            ref,
            token,
          ),
          from: getcarsProvider,
          name: r'getcarsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getcarsHash,
        );

  final String token;

  @override
  bool operator ==(Object other) {
    return other is GetcarsProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GetcarsRef = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;

/// See also [getcars].
final getcarsProvider = GetcarsFamily();

class GetcarsFamily extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  GetcarsFamily();

  GetcarsProvider call(
    String token,
  ) {
    return GetcarsProvider(
      token,
    );
  }

  @override
  AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> getProviderOverride(
    covariant GetcarsProvider provider,
  ) {
    return call(
      provider.token,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'getcarsProvider';
}
