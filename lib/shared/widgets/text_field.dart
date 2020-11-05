import 'package:flutter/material.dart';

class TextFieldApp extends StatelessWidget {
  final String hintText;
  final String suffixText;
  final Icon prefixIcon;

  TextFieldApp({@required this.hintText, this.suffixText, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType:
            TextInputType.numberWithOptions(decimal: true, signed: false),
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: hintText,
            suffixText: suffixText,
            prefixIcon: prefixIcon));
  }
}
