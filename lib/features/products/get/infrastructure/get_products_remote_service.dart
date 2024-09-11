import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../shared/defined_error.dart';
import '../../product.dart';

class GetProductsRemoteService {
  final Dio dio;

  GetProductsRemoteService(this.dio);

  Future<Either<DefinedError, List<Product>>> getAllProducts() async {
    final resp = await dio.get('/produk');

    if (resp.statusCode == 200) {
      final _list = (resp.data as List)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList();

      return right(_list);
    } else {
      return left(DefinedError.network(
        resp.statusCode,
        resp.statusMessage,
      ));
    }
  }
}
