import 'package:brik/shared/defined_error.dart';
import 'package:dartz/dartz.dart';

import '../../product.dart';
import 'get_products_remote_service.dart';

class GetProductsRepository {
  final GetProductsRemoteService _remoteService;

  GetProductsRepository(this._remoteService);

  Future<Either<DefinedError, List<Product>>> getAllProducts() async {
    return _remoteService.getAllProducts();
  }

  Future<Either<DefinedError, List<Product>>> getProductsByPage() async {
    return _remoteService.getAllProducts();
  }
}
