import 'package:brik/shared/providers.dart';
import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared/defined_error.dart';
import '../../product.dart';
import '../infrastructure/add_products_remote_service.dart';
import '../infrastructure/add_products_repository.dart';

part 'add_products_notifier.g.dart';

@Riverpod(keepAlive: true)
AddProductsRemoteService addProductsRemoteService(
    AddProductsRemoteServiceRef ref) {
  return AddProductsRemoteService(
    ref.watch(dioProvider),
  );
}

@Riverpod(keepAlive: true)
AddProductsRepository addProductsRepository(AddProductsRepositoryRef ref) {
  return AddProductsRepository(
    ref.watch(addProductsRemoteServiceProvider),
  );
}

@riverpod
class AddProductsNotifier extends _$AddProductsNotifier {
  @override
  FutureOr<Either<DefinedError, Product>> build() async {
    return right(Product.initial());
  }

  Future<void> addProduct({
    required int productId,
    required int categoryId,
    required double weight,
    required double width,
    required double length,
    required double height,
    required double price,
    required String categoryName,
    required String sku,
    required String name,
    required String description,
    required String imageUrl,
  }) async {
    state = const AsyncLoading();

    final product = Product(
      productId: productId,
      categoryId: categoryId,
      weight: weight,
      width: width,
      length: length,
      height: height,
      price: price,
      categoryName: categoryName,
      sku: sku,
      name: name,
      description: description,
      imageUrl: imageUrl,
    );

    state = await AsyncValue.guard(() async {
      final repo = ref.read(addProductsRepositoryProvider);
      return repo.addProduct(product);
    });
  }
}
