import 'package:flutter/material.dart';


enum ProductTypeEnum {
  Deliverable,
  Downloadable
}

class MyRadioButton extends StatelessWidget {
  MyRadioButton({super.key,
  required this.title,
    required this.value,
    required this.productTypeEnum,
    required this.onChanged
  });

  String title;
  ProductTypeEnum value;
  ProductTypeEnum? productTypeEnum;
  Function(ProductTypeEnum?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: RadioListTile(
          contentPadding:  EdgeInsets.all(0.0),
          value: value,
          groupValue: productTypeEnum,
          tileColor: Colors.deepPurple.shade50,
          dense: true,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          title: Text(title),
          onChanged: onChanged,
      ),
    );
  }
}
