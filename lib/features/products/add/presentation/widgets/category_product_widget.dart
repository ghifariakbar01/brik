import 'package:flutter/material.dart';

import '../../../../../shared/style/style.dart';

class CategoryProductWidget extends StatelessWidget {
  final TextEditingController controller;

  const CategoryProductWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final categoryDropdown = [
      'Cemilan',
      'Minuman',
    ];

    return DropdownButtonFormField<String>(
      elevation: 0,
      iconSize: 20,
      padding: EdgeInsets.all(0),
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: Palette.primaryColor,
      ),
      decoration: Themes.formStyleBordered(
        'Kategori',
      ),
      validator: (value) {
        if (value == null) {
          return 'Kategori tidak boleh kosong';
        }

        return null;
      },
      value: categoryDropdown.firstWhere(
        (element) => element == controller.value,
        orElse: () => categoryDropdown.first,
      ),
      onChanged: (String? value) {
        if (value != null) {
          controller.text = value;
        }
      },
      isExpanded: true,
      items: categoryDropdown.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: Themes.font(
              14,
            ),
          ),
        );
      }).toList(),
    );
  }
}
