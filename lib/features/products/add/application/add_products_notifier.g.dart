// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_products_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addProductsRemoteServiceHash() =>
    r'55e8adbaff4c87c8700d9f7881caae57f860320b';

/// See also [addProductsRemoteService].
@ProviderFor(addProductsRemoteService)
final addProductsRemoteServiceProvider =
    Provider<AddProductsRemoteService>.internal(
  addProductsRemoteService,
  name: r'addProductsRemoteServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$addProductsRemoteServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AddProductsRemoteServiceRef = ProviderRef<AddProductsRemoteService>;
String _$addProductsRepositoryHash() =>
    r'01a59b4b8407e8e27b2fbbd1046c7003fd752354';

/// See also [addProductsRepository].
@ProviderFor(addProductsRepository)
final addProductsRepositoryProvider = Provider<AddProductsRepository>.internal(
  addProductsRepository,
  name: r'addProductsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$addProductsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AddProductsRepositoryRef = ProviderRef<AddProductsRepository>;
String _$addProductsNotifierHash() =>
    r'783a73ebfa6d9e2397586dcbe776599765025db8';

/// See also [AddProductsNotifier].
@ProviderFor(AddProductsNotifier)
final addProductsNotifierProvider = AutoDisposeAsyncNotifierProvider<
    AddProductsNotifier, Either<DefinedError, Product>>.internal(
  AddProductsNotifier.new,
  name: r'addProductsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$addProductsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AddProductsNotifier
    = AutoDisposeAsyncNotifier<Either<DefinedError, Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
