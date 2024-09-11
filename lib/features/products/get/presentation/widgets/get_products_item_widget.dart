import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../shared/router/route_names.dart';
import '../../../../../shared/style/style.dart';
import '../../../product.dart';

class GetProductsItemWidget extends StatelessWidget {
  final Product product;

  const GetProductsItemWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(
          RouteNames.detailProductRoute,
          extra: product.toJson(),
        );
      },
      child: Ink(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Palette.containerColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CachedNetworkImage(
                    imageUrl: product.imageUrl,
                    errorWidget: (___, __, _) {
                      return Icon(Icons.image);
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    product.name,
                    style: Themes.font(
                      17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'SKU : ' + product.sku,
                    style: Themes.font(
                      15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                          child: Text(
                        product.description,
                        maxLines: 5,
                        style: Themes.font(12),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    product.categoryName,
                    style: Themes.font(
                      13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
