// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.repository.provider.dart';

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

String _$getorderHash() => r'd66a9f440bdadb1142772dc7dcf03dc3e75043c7';

/// See also [getorder].
class GetorderProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  GetorderProvider(
    this.token,
  ) : super(
          (ref) => getorder(
            ref,
            token,
          ),
          from: getorderProvider,
          name: r'getorderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getorderHash,
        );

  final String token;

  @override
  bool operator ==(Object other) {
    return other is GetorderProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GetorderRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;

/// See also [getorder].
final getorderProvider = GetorderFamily();

class GetorderFamily extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  GetorderFamily();

  GetorderProvider call(
    String token,
  ) {
    return GetorderProvider(
      token,
    );
  }

  @override
  AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> getProviderOverride(
    covariant GetorderProvider provider,
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
  String? get name => r'getorderProvider';
}

String _$getnewHash() => r'551befc22d973d3301f8315a2e07e5f520f1e659';

/// See also [getnew].
class GetnewProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  GetnewProvider(
    this.token,
    this.id,
    this.model,
  ) : super(
          (ref) => getnew(
            ref,
            token,
            id,
            model,
          ),
          from: getnewProvider,
          name: r'getnewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getnewHash,
        );

  final String token;
  final String id;
  final String model;

  @override
  bool operator ==(Object other) {
    return other is GetnewProvider &&
        other.token == token &&
        other.id == id &&
        other.model == model;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, model.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GetnewRef = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;

/// See also [getnew].
final getnewProvider = GetnewFamily();

class GetnewFamily extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  GetnewFamily();

  GetnewProvider call(
    String token,
    String id,
    String model,
  ) {
    return GetnewProvider(
      token,
      id,
      model,
    );
  }

  @override
  AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> getProviderOverride(
    covariant GetnewProvider provider,
  ) {
    return call(
      provider.token,
      provider.id,
      provider.model,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'getnewProvider';
}
