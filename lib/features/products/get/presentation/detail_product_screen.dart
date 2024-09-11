import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../shared/ext.dart';
import '../../../../shared/style/style.dart';
import '../../product.dart';

class DetailProductScreen extends ConsumerWidget {
  const DetailProductScreen(this.product, {super.key});

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final url = product.imageUrl;
    log('url $url');

    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3,
                  child: CachedNetworkImage(
                      imageUrl: product.imageUrl,
                      fit: BoxFit.cover,
                      errorWidget: (___, __, _) {
                        return Icon(Icons.image);
                      }),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  product.name,
                  style: Themes.font(
                    25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  product.description,
                  style: Themes.font(14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SKU',
                          style: Themes.font(
                            25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          product.sku,
                          style: Themes.font(14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: Themes.font(
                            25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          rpCurreny.format(product.price).toString(),
                          style: Themes.font(14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Category',
                          style: Themes.font(
                            25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          product.categoryName.toString(),
                          style: Themes.font(14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dimension (L x W x H) cm ',
                      style: Themes.font(
                        25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '${product.length} x ${product.width} x ${product.height}',
                      style: Themes.font(14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Weight (grams) ',
                      style: Themes.font(
                        25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '${product.weight}',
                      style: Themes.font(14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
