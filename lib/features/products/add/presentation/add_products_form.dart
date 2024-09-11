import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../shared/style/style.dart';
import 'widgets/category_product_widget.dart';
import 'widgets/dimension_product_widget.dart';

class AddProductsForm extends ConsumerWidget {
  const AddProductsForm({
    super.key,
    required this.isUploading,
    required this.categoryController,
    required this.skuController,
    required this.nameController,
    required this.descriptionController,
    required this.weightController,
    required this.widthController,
    required this.lengthController,
    required this.heightController,
    required this.imageController,
    required this.priceController,
  });

  final ValueNotifier<bool> isUploading;
  final TextEditingController categoryController;
  final TextEditingController skuController;
  final TextEditingController nameController;
  final TextEditingController descriptionController;
  final TextEditingController weightController;
  final TextEditingController widthController;
  final TextEditingController lengthController;
  final TextEditingController heightController;
  final TextEditingController imageController;
  final TextEditingController priceController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        CategoryProductWidget(
          controller: categoryController,
        ),
        SizedBox(
          height: 16,
        ),
        TextFormField(
            cursorColor: Palette.primaryColor,
            controller: skuController,
            decoration: Themes.formStyleBordered('SKU Barang',
                icon: Icon(
                  Icons.numbers,
                )),
            style: Themes.font(
              14,
            ),
            validator: (item) {
              if (item == null) {
                return 'SKU tidak boleh kosong';
              } else if (item.isEmpty) {
                return 'SKU tidak boleh kosong';
              }

              return null;
            }),
        SizedBox(
          height: 16,
        ),
        TextFormField(
            cursorColor: Palette.primaryColor,
            controller: nameController,
            decoration: Themes.formStyleBordered('Nama'),
            style: Themes.font(
              14,
            ),
            validator: (item) {
              if (item == null) {
                return 'Nama tidak boleh kosong';
              } else if (item.isEmpty) {
                return 'Nama tidak boleh kosong';
              }

              return null;
            }),
        SizedBox(
          height: 16,
        ),
        TextFormField(
            cursorColor: Palette.primaryColor,
            controller: descriptionController,
            decoration: Themes.formStyleBordered('Description'),
            style: Themes.font(
              14,
            ),
            validator: (item) {
              if (item == null) {
                return 'Description tidak boleh kosong';
              } else if (item.isEmpty) {
                return 'Description tidak boleh kosong';
              }

              return null;
            }),
        SizedBox(
          height: 16,
        ),
        TextFormField(
            cursorColor: Palette.primaryColor,
            controller: weightController,
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
            ),
            decoration: Themes.formStyleBordered('Weight (in Grams)'),
            style: Themes.font(
              14,
            ),
            validator: (item) {
              if (item == null) {
                return 'Weight tidak boleh kosong';
              } else if (item.isEmpty) {
                return 'Weight tidak boleh kosong';
              }

              return null;
            }),
        SizedBox(
          height: 16,
        ),
        DimensionProductWidget(
          heightController: heightController,
          widthController: widthController,
          lengthController: lengthController,
        ),
        SizedBox(
          height: 4,
        ),
        TextButton(
            onPressed: () async {
              final resp = await launchUrl(Uri.parse('https://imgbb.com'));

              if (resp) {
                isUploading.value = true;
              }
            },
            child: Text(isUploading.value
                ? 'Copy image Url (Embed HTML Link yang berakhir dalam .jpg)\n\nContoh : https://i.ibb.co.com/4ZKm6qW/IMG-0111.jpg'
                : 'Upload image Url (Embed HTML Link yang berakhir dalam .jpg)\n\nContoh : https://i.ibb.co.com/4ZKm6qW/IMG-0111.jpg')),
        SizedBox(
          height: 4,
        ),
        TextFormField(
            cursorColor: Palette.primaryColor,
            controller: imageController,
            decoration: Themes.formStyleBordered('Image Url (paste url here)'),
            style: Themes.font(
              14,
            ),
            validator: (item) {
              if (item == null) {
                return 'ImageUrl tidak boleh kosong';
              } else if (item.isEmpty) {
                return 'ImageUrl tidak boleh kosong';
              }

              return null;
            }),
        SizedBox(
          height: 16,
        ),
        TextFormField(
            cursorColor: Palette.primaryColor,
            controller: priceController,
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
            ),
            inputFormatters: [
              CurrencyTextInputFormatter.currency(
                locale: 'id_ID',
                symbol: 'Rp',
              )
            ],
            decoration: Themes.formStyleBordered(
              'Price',
              icon: Icon(Icons.price_change),
            ),
            style: Themes.font(
              14,
            ),
            validator: (item) {
              if (item == null) {
                return 'Price tidak boleh kosong';
              } else if (item.isEmpty) {
                return 'Price tidak boleh kosong';
              }

              return null;
            }),
      ],
    );
  }
}
