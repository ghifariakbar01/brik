import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../shared/router/route_names.dart';
import '../../../../shared/style/style.dart';
import '../../../../shared/widgets/error_message_widget.dart';
import '../../../../shared/widgets/v_async_value_widget.dart';
import '../application/get_products_notifier.dart';
import 'widgets/get_products_item_widget.dart';

class GetProductsScreen extends HookConsumerWidget {
  const GetProductsScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(getProductsNotifierProvider);

    final searchString = useState('');

    return VAsyncValueWidget(
        value: products,
        data: (p) => p.fold((l) {
              return ErrorMessageWidget(
                  t: l.runtimeType, errorMessage: 'Error $l');
            }, (r) {
              final list = searchString.value.isEmpty
                  ? r
                  : r
                      .where(
                        (element) => element.name
                            .toLowerCase()
                            .contains(searchString.value),
                      )
                      .toList();

              return Scaffold(
                appBar: AppBar(
                  leadingWidth: 0,
                  title: TextFormField(
                    decoration: Themes.formStyle('Search Nama Barang'),
                    onFieldSubmitted: (value) {
                      searchString.value = value;
                    },
                  ),
                  toolbarHeight: 70,
                ),
                floatingActionButton: FloatingActionButton.extended(
                  onPressed: () {
                    searchString.value = '';
                    context.pushNamed(RouteNames.addProductRoute);
                  },
                  label: Icon(
                    Icons.add,
                  ),
                ),
                body: list.isEmpty
                    ? TextButton(
                        onPressed: () async {
                          searchString.value = '';
                          return ref
                              .read(getProductsNotifierProvider.notifier)
                              .getAllProducts();
                        },
                        child: Center(child: Text('Nothing Here ...')))
                    : Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Builder(
                          builder: (builder) {
                            final _reversed = list.reversed.toList();

                            return RefreshIndicator(
                              onRefresh: () async {
                                return ref
                                    .read(getProductsNotifierProvider.notifier)
                                    .getAllProducts();
                              },
                              child: ListView.separated(
                                itemBuilder: (context, index) {
                                  final item = _reversed[index];

                                  return GetProductsItemWidget(
                                    product: item,
                                  );
                                },
                                separatorBuilder: (index, context) {
                                  return SizedBox(height: 8);
                                },
                                itemCount: _reversed.length,
                              ),
                            );
                          },
                        )),
              );
            }));
  }
}
