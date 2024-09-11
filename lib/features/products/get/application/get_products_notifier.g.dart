// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getProductsRemoteServiceHash() =>
    r'e2f9abdaf96edc0773e5c4260316afcb1aa50bb6';

/// See also [getProductsRemoteService].
@ProviderFor(getProductsRemoteService)
final getProductsRemoteServiceProvider =
    Provider<GetProductsRemoteService>.internal(
  getProductsRemoteService,
  name: r'getProductsRemoteServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getProductsRemoteServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetProductsRemoteServiceRef = ProviderRef<GetProductsRemoteService>;
String _$getProductsRepositoryHash() =>
    r'6d1188c12cd26c3153ef41b6da0a28ced5843007';

/// See also [getProductsRepository].
@ProviderFor(getProductsRepository)
final getProductsRepositoryProvider = Provider<GetProductsRepository>.internal(
  getProductsRepository,
  name: r'getProductsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getProductsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetProductsRepositoryRef = ProviderRef<GetProductsRepository>;
String _$getProductsNotifierHash() =>
    r'969f991484e0cfcd392083301106e33076b8c599';

/// See also [GetProductsNotifier].
@ProviderFor(GetProductsNotifier)
final getProductsNotifierProvider = AutoDisposeAsyncNotifierProvider<
    GetProductsNotifier, Either<DefinedError, List<Product>>>.internal(
  GetProductsNotifier.new,
  name: r'getProductsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getProductsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetProductsNotifier
    = AutoDisposeAsyncNotifier<Either<DefinedError, List<Product>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
