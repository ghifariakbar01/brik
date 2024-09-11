import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    @JsonKey(name: 'id') required int productId,
    @JsonKey(name: 'CategoryId') required int categoryId,
    @JsonKey(name: 'image') required String imageUrl,
    @JsonKey(name: 'weight') required double weight,
    @JsonKey(name: 'width') required double width,
    @JsonKey(name: 'length') required double length,
    @JsonKey(name: 'height') required double height,
    @JsonKey(name: 'harga') required double price,
    @JsonKey(name: 'categoryName') required String categoryName,
    @JsonKey(name: 'sku') required String sku,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String description,
  }) = _Product;

  factory Product.initial() => Product(
      productId: 0,
      categoryId: 0,
      categoryName: '',
      sku: '',
      name: '',
      description: '',
      weight: 0,
      width: 0,
      length: 0,
      height: 0,
      imageUrl: '',
      price: 0);

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
