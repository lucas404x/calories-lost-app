import 'package:calories_lost_app/models/user_model.dart';
import 'package:flutter/widgets.dart';

import '../../data/local_storage_interface.dart';
import '../../models/met_value_model.dart';

class CaloriesController {
  ILocalStorage _localStorage;
  UserModel _userData;

  CaloriesController(this._localStorage, this._userData);

  Future<List<Map>> getData() async {
    List<MetValueModel> data = await _localStorage.getAllData();
    List<Map> finalData = [];

    data.forEach((element) {
      double calories =
          _userData.weight * _userData.exerciseTime * element.metPoint / 60;

      finalData.add({
        'exercises': element.exercises,
        'calories': calories.toStringAsFixed(2)
      });
    });

    return finalData;
  }

  backToHome(context) => Navigator.of(context).pop();
}
