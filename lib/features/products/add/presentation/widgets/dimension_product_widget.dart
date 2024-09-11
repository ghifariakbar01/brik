import 'package:flutter/material.dart';

import '../../../../../shared/style/style.dart';

class DimensionProductWidget extends StatelessWidget {
  final TextEditingController heightController;
  final TextEditingController widthController;
  final TextEditingController lengthController;

  const DimensionProductWidget(
      {super.key,
      required this.heightController,
      required this.widthController,
      required this.lengthController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
                cursorColor: Palette.primaryColor,
                controller: heightController,
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: Themes.formStyleBordered('Height (in Cm)'),
                style: Themes.font(
                  14,
                ),
                validator: (item) {
                  if (item == null) {
                    return 'Height tidak boleh kosong';
                  } else if (item.isEmpty) {
                    return 'Height tidak boleh kosong';
                  }

                  return null;
                }),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: TextFormField(
                cursorColor: Palette.primaryColor,
                controller: widthController,
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: Themes.formStyleBordered('Width (in Cm)'),
                style: Themes.font(
                  14,
                ),
                validator: (item) {
                  if (item == null) {
                    return 'Width tidak boleh kosong';
                  } else if (item.isEmpty) {
                    return 'Width tidak boleh kosong';
                  }

                  return null;
                }),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: TextFormField(
                cursorColor: Palette.primaryColor,
                controller: lengthController,
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: Themes.formStyleBordered('Length (in Cm)'),
                style: Themes.font(
                  14,
                ),
                validator: (item) {
                  if (item == null) {
                    return 'Length tidak boleh kosong';
                  } else if (item.isEmpty) {
                    return 'Length tidak boleh kosong';
                  }

                  return null;
                }),
          ),
        ],
      ),
    );
  }
}
