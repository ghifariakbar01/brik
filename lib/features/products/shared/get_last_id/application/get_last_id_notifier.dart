import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../get/application/get_products_notifier.dart';

part 'get_last_id_notifier.g.dart';

@riverpod
class GetLastIdNotifier extends _$GetLastIdNotifier {
  @override
  FutureOr<int> build() async {
    final repo = ref.read(getProductsRepositoryProvider);
    final items = await repo.getAllProducts();

    return items.fold(
      (_) => 1,
      (r) => r.last.productId + 1,
    );
  }
}
