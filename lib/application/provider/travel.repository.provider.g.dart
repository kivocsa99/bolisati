// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel.repository.provider.dart';

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

String $getreregionsHash() => r'1a8775c5bc1cc44b41276e616ce7537285ffe382';

/// See also [getreregions].
class GetreregionsProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  GetreregionsProvider(
    this.token,
  ) : super(
          (ref) => getreregions(
            ref,
            token,
          ),
          from: getreregionsProvider,
          name: r'getreregionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $getreregionsHash,
        );

  final String token;

  @override
  bool operator ==(Object other) {
    return other is GetreregionsProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GetreregionsRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;

/// See also [getreregions].
final getreregionsProvider = GetreregionsFamily();

class GetreregionsFamily
    extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  GetreregionsFamily();

  GetreregionsProvider call(
    String token,
  ) {
    return GetreregionsProvider(
      token,
    );
  }

  @override
  AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> getProviderOverride(
    covariant GetreregionsProvider provider,
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
  String? get name => r'getreregionsProvider';
}
