import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../shared/defined_error.dart';
import '../../product.dart';

class AddProductsRemoteService {
  final Dio dio;

  AddProductsRemoteService(this.dio);

  Future<Either<DefinedError, Product>> addProduct(Product product) async {
    final json = product.toJson();

    final resp = await dio.post(
      '/produk',
      options: Options(
        contentType: 'application/json',
      ),
      data: jsonEncode(json),
    );

    if (resp.statusCode == 201) {
      final product = Product.fromJson(resp.data as Map<String, dynamic>);
      return right(product);
    } else {
      return left(DefinedError.network(
        resp.statusCode,
        resp.statusMessage,
      ));
    }
  }
}
