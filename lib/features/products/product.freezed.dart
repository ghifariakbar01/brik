// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: 'id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CategoryId')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight')
  double get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  double get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'length')
  double get length => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  double get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'harga')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'categoryName')
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku')
  String get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int productId,
      @JsonKey(name: 'CategoryId') int categoryId,
      @JsonKey(name: 'image') String imageUrl,
      @JsonKey(name: 'weight') double weight,
      @JsonKey(name: 'width') double width,
      @JsonKey(name: 'length') double length,
      @JsonKey(name: 'height') double height,
      @JsonKey(name: 'harga') double price,
      @JsonKey(name: 'categoryName') String categoryName,
      @JsonKey(name: 'sku') String sku,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? categoryId = null,
    Object? imageUrl = null,
    Object? weight = null,
    Object? width = null,
    Object? length = null,
    Object? height = null,
    Object? price = null,
    Object? categoryName = null,
    Object? sku = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int productId,
      @JsonKey(name: 'CategoryId') int categoryId,
      @JsonKey(name: 'image') String imageUrl,
      @JsonKey(name: 'weight') double weight,
      @JsonKey(name: 'width') double width,
      @JsonKey(name: 'length') double length,
      @JsonKey(name: 'height') double height,
      @JsonKey(name: 'harga') double price,
      @JsonKey(name: 'categoryName') String categoryName,
      @JsonKey(name: 'sku') String sku,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? categoryId = null,
    Object? imageUrl = null,
    Object? weight = null,
    Object? width = null,
    Object? length = null,
    Object? height = null,
    Object? price = null,
    Object? categoryName = null,
    Object? sku = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$ProductImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {@JsonKey(name: 'id') required this.productId,
      @JsonKey(name: 'CategoryId') required this.categoryId,
      @JsonKey(name: 'image') required this.imageUrl,
      @JsonKey(name: 'weight') required this.weight,
      @JsonKey(name: 'width') required this.width,
      @JsonKey(name: 'length') required this.length,
      @JsonKey(name: 'height') required this.height,
      @JsonKey(name: 'harga') required this.price,
      @JsonKey(name: 'categoryName') required this.categoryName,
      @JsonKey(name: 'sku') required this.sku,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') required this.description});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int productId;
  @override
  @JsonKey(name: 'CategoryId')
  final int categoryId;
  @override
  @JsonKey(name: 'image')
  final String imageUrl;
  @override
  @JsonKey(name: 'weight')
  final double weight;
  @override
  @JsonKey(name: 'width')
  final double width;
  @override
  @JsonKey(name: 'length')
  final double length;
  @override
  @JsonKey(name: 'height')
  final double height;
  @override
  @JsonKey(name: 'harga')
  final double price;
  @override
  @JsonKey(name: 'categoryName')
  final String categoryName;
  @override
  @JsonKey(name: 'sku')
  final String sku;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String description;

  @override
  String toString() {
    return 'Product(productId: $productId, categoryId: $categoryId, imageUrl: $imageUrl, weight: $weight, width: $width, length: $length, height: $height, price: $price, categoryName: $categoryName, sku: $sku, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      categoryId,
      imageUrl,
      weight,
      width,
      length,
      height,
      price,
      categoryName,
      sku,
      name,
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
          {@JsonKey(name: 'id') required final int productId,
          @JsonKey(name: 'CategoryId') required final int categoryId,
          @JsonKey(name: 'image') required final String imageUrl,
          @JsonKey(name: 'weight') required final double weight,
          @JsonKey(name: 'width') required final double width,
          @JsonKey(name: 'length') required final double length,
          @JsonKey(name: 'height') required final double height,
          @JsonKey(name: 'harga') required final double price,
          @JsonKey(name: 'categoryName') required final String categoryName,
          @JsonKey(name: 'sku') required final String sku,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'description') required final String description}) =
      _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get productId;
  @override
  @JsonKey(name: 'CategoryId')
  int get categoryId;
  @override
  @JsonKey(name: 'image')
  String get imageUrl;
  @override
  @JsonKey(name: 'weight')
  double get weight;
  @override
  @JsonKey(name: 'width')
  double get width;
  @override
  @JsonKey(name: 'length')
  double get length;
  @override
  @JsonKey(name: 'height')
  double get height;
  @override
  @JsonKey(name: 'harga')
  double get price;
  @override
  @JsonKey(name: 'categoryName')
  String get categoryName;
  @override
  @JsonKey(name: 'sku')
  String get sku;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
