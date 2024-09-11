// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      productId: (json['id'] as num).toInt(),
      categoryId: (json['CategoryId'] as num).toInt(),
      imageUrl: json['image'] as String,
      weight: (json['weight'] as num).toDouble(),
      width: (json['width'] as num).toDouble(),
      length: (json['length'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      price: (json['harga'] as num).toDouble(),
      categoryName: json['categoryName'] as String,
      sku: json['sku'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.productId,
      'CategoryId': instance.categoryId,
      'image': instance.imageUrl,
      'weight': instance.weight,
      'width': instance.width,
      'length': instance.length,
      'height': instance.height,
      'harga': instance.price,
      'categoryName': instance.categoryName,
      'sku': instance.sku,
      'name': instance.name,
      'description': instance.description,
    };
