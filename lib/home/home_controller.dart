import 'package:flutter/widgets.dart';

class HomeController {
  GlobalKey<FormState> _formKey;
  GlobalKey<FormState> get formKey => _formKey;

  HomeController(this._formKey);

  toResultPage(String weight, String exerciseTime) {
    if (!_formKey.currentState.validate()) return;

    print(weight);
    print(exerciseTime);
  }

  String validator(String input) {
    if (input.isEmpty) return 'The field is empty.';
    if (double.tryParse(input) == null) return 'The number is not valid.';
    if (input.contains(' ')) return 'The number is not valid.';

    return null;
  }
}
