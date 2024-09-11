import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../shared/style/style.dart';
import '../../../../shared/widgets/alert_helper.dart';
import '../../../../shared/widgets/v_async_value_widget.dart';
import '../../get/application/get_products_notifier.dart';
import '../../product.dart';
import '../../shared/get_last_id/application/get_last_id_notifier.dart';
import '../application/add_products_notifier.dart';
import 'add_products_form.dart';

class AddProductsScreen extends HookConsumerWidget {
  const AddProductsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(addProductsNotifierProvider, (_, state) {
      if (!state.isLoading &&
          state.hasValue &&
          state.value != null &&
          state.hasError == false) {
        final resp = state.requireValue;
        resp.fold((l) {}, (r) {
          return r == Product.initial()
              ? () {}
              : AlertHelper.showSnackBar(
                  context,
                  color: Palette.primaryColor,
                  message: 'Sukses Menginput ${r.name}',
                  onDone: () {
                    ref.invalidate(getProductsNotifierProvider);
                    context.pop();
                    return Future.value(true);
                  },
                );
        });
      }
    });

    final _formKey = useMemoized(GlobalKey<FormState>.new, const []);

    final categoryController = useTextEditingController(text: 'Cemilan');
    final skuController = useTextEditingController();
    final nameController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final weightController = useTextEditingController();
    final widthController = useTextEditingController();
    final lengthController = useTextEditingController();
    final heightController = useTextEditingController();
    final imageController = useTextEditingController();
    final priceController = useTextEditingController();

    final isShowError = useState(false);

    final addProduct = ref.watch(addProductsNotifierProvider);
    final getLastId = ref.watch(getLastIdNotifierProvider);

    final isUploading = useState(false);

    return KeyboardDismissOnTap(
      child: Scaffold(
        appBar: AppBar(),
        body: VAsyncValueWidget(
          value: addProduct,
          data: (_) => Padding(
            padding: const EdgeInsets.all(32.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                autovalidateMode: isShowError.value
                    ? AutovalidateMode.onUserInteraction
                    : AutovalidateMode.disabled,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddProductsForm(
                        isUploading: isUploading,
                        categoryController: categoryController,
                        skuController: skuController,
                        nameController: nameController,
                        descriptionController: descriptionController,
                        weightController: weightController,
                        widthController: widthController,
                        lengthController: lengthController,
                        heightController: heightController,
                        imageController: imageController,
                        priceController: priceController),
                    SizedBox(
                      height: 16,
                    ),
                    VAsyncValueWidget<int>(
                      value: getLastId,
                      data: (id) => Center(
                        child: TextButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();

                              final categoryId = Random().nextInt(50) + 1;
                              final price = priceController.text
                                  .replaceAll(',00', '')
                                  .replaceAll('Rp', '')
                                  .replaceAll('.', '');

                              return ref
                                  .read(addProductsNotifierProvider.notifier)
                                  .addProduct(
                                    productId: id,
                                    categoryId: categoryId,
                                    price: double.parse(price),
                                    weight: double.parse(weightController.text),
                                    width: double.parse(widthController.text),
                                    length: double.parse(lengthController.text),
                                    height: double.parse(heightController.text),
                                    categoryName: categoryController.text,
                                    sku: skuController.text,
                                    name: nameController.text,
                                    description: descriptionController.text,
                                    imageUrl: imageController.text,
                                  );
                            }
                          },
                          child: Text('Input Produk'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
