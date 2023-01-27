// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domestic.repository.provider.dart';

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

String _$getoffersHash() => r'699693acf3ccbe60b8448a385e7c7133e315f3b9';

/// See also [getoffers].
class GetoffersProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  GetoffersProvider(
    this.token,
  ) : super(
          (ref) => getoffers(
            ref,
            token,
          ),
          from: getoffersProvider,
          name: r'getoffersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getoffersHash,
        );

  final String token;

  @override
  bool operator ==(Object other) {
    return other is GetoffersProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GetoffersRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;

/// See also [getoffers].
final getoffersProvider = GetoffersFamily();

class GetoffersFamily extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  GetoffersFamily();

  GetoffersProvider call(
    String token,
  ) {
    return GetoffersProvider(
      token,
    );
  }

  @override
  AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> getProviderOverride(
    covariant GetoffersProvider provider,
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
  String? get name => r'getoffersProvider';
}
