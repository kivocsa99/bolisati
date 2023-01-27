// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal.repository.provider.dart';

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

String _$getoccupationHash() => r'36154f17b72708ed6c1a46a74ef4a0997a28fb96';

/// See also [getoccupation].
class GetoccupationProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  GetoccupationProvider(
    this.token,
  ) : super(
          (ref) => getoccupation(
            ref,
            token,
          ),
          from: getoccupationProvider,
          name: r'getoccupationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getoccupationHash,
        );

  final String token;

  @override
  bool operator ==(Object other) {
    return other is GetoccupationProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GetoccupationRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;

/// See also [getoccupation].
final getoccupationProvider = GetoccupationFamily();

class GetoccupationFamily
    extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  GetoccupationFamily();

  GetoccupationProvider call(
    String token,
  ) {
    return GetoccupationProvider(
      token,
    );
  }

  @override
  AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> getProviderOverride(
    covariant GetoccupationProvider provider,
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
  String? get name => r'getoccupationProvider';
}
