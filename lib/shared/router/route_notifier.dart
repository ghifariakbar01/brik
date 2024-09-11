import 'package:brik/features/products/add/presentation/add_products_screen.dart';
import 'package:brik/features/products/get/presentation/get_products_screen.dart';
import 'package:brik/features/products/product.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/products/get/presentation/detail_product_screen.dart';
import 'route_names.dart';

class RouterNotifier extends ChangeNotifier {
  String? redirectLogic(BuildContext context, GoRouterState state) {
    if (state.matchedLocation == RouteNames.defaultRoute) {
      return RouteNames.getProductsRoute;
    }

    return null;
  }

  List<GoRoute> get routes {
    return [
      GoRoute(
        name: RouteNames.defaultNameRoute,
        path: RouteNames.defaultRoute,
        builder: (context, state) => Container(),
      ),
      GoRoute(
          name: RouteNames.getProductsNameRoute,
          path: RouteNames.getProductsRoute,
          builder: (context, state) => GetProductsScreen(),
          routes: [
            GoRoute(
              name: RouteNames.addProductNameRoute,
              path: RouteNames.addProductRoute,
              builder: (context, state) => AddProductsScreen(),
            ),
            GoRoute(
              name: RouteNames.detailProductNameRoute,
              path: RouteNames.detailProductRoute,
              builder: (context, state) {
                final json = state.extra as Map<String, dynamic>;

                final product = Product.fromJson(json);
                return DetailProductScreen(product);
              },
            ),
          ]),
    ];
  }
}
