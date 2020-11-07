import 'package:flutter/material.dart';

class TextFieldApp extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) validator;
  final String suffixText;
  final String hintText;
  final Icon prefixIcon;

  TextFieldApp(
      {@required this.hintText,
      @required this.controller,
      this.suffixText,
      this.prefixIcon,
      this.validator});

  @override
  Widget build(BuildContext context) {
    print(controller);
    return TextFormField(
      controller: controller,
      keyboardType:
          TextInputType.numberWithOptions(decimal: true, signed: false),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hintText,
        suffixText: suffixText,
        prefixIcon: prefixIcon,
      ),
      validator: validator,
    );
  }
}
