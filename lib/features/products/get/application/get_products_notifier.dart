import 'package:brik/shared/providers.dart';
import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared/defined_error.dart';
import '../../product.dart';
import '../infrastructure/get_products_remote_service.dart';
import '../infrastructure/get_products_repository.dart';

part 'get_products_notifier.g.dart';

@Riverpod(keepAlive: true)
GetProductsRemoteService getProductsRemoteService(
    GetProductsRemoteServiceRef ref) {
  return GetProductsRemoteService(
    ref.watch(dioProvider),
  );
}

@Riverpod(keepAlive: true)
GetProductsRepository getProductsRepository(GetProductsRepositoryRef ref) {
  return GetProductsRepository(
    ref.watch(getProductsRemoteServiceProvider),
  );
}

@riverpod
class GetProductsNotifier extends _$GetProductsNotifier {
  @override
  FutureOr<Either<DefinedError, List<Product>>> build() async {
    final repo = ref.read(getProductsRepositoryProvider);
    return repo.getAllProducts();
  }

  getAllProducts() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repo = ref.read(getProductsRepositoryProvider);
      return repo.getAllProducts();
    });
  }

  getProductsByPage(int page) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repo = ref.read(getProductsRepositoryProvider);
      return repo.getAllProducts();
    });
  }
}
