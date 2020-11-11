import '../../models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../calories/calories_page.dart';

class HomeController {
  GlobalKey<FormState> _formKey;
  GlobalKey<FormState> get formKey => _formKey;

  HomeController(this._formKey);

  toResultPage(BuildContext context, Map data) {
    if (!_formKey.currentState.validate()) return;

    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => CaloriesPage(UserModel.fromJson(data))));
  }

  String validator(String input) {
    if (input.isEmpty) return 'The field is empty.';
    if (double.tryParse(input) == null) return 'The number is not valid.';
    if (input.contains(' ')) return 'The number is not valid.';

    return null;
  }
}
