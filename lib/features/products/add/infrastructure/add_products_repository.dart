import 'package:brik/shared/defined_error.dart';
import 'package:dartz/dartz.dart';

import '../../product.dart';
import 'add_products_remote_service.dart';

class AddProductsRepository {
  final AddProductsRemoteService _remoteService;

  AddProductsRepository(this._remoteService);

  Future<Either<DefinedError, Product>> addProduct(Product product) async {
    return _remoteService.addProduct(product);
  }
}
