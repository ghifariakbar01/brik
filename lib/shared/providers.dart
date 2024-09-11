import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';

import 'router/route_notifier.dart';

// NETWORKING
final _options = BaseOptions(
    baseUrl: 'https://crudcrud.com/api/7466b485c57e4993aefb63ea6b325181');

final dioProvider = Provider((ref) => Dio(_options));

// ROUTE
final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier();
  return GoRouter(
    refreshListenable: router,
    redirect: router.redirectLogic,
    routes: router.routes,
  );
});
