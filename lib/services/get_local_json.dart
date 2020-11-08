import 'dart:convert';

import 'package:flutter/services.dart';

import '../data/local_storage_interface.dart';
import '../models/met_value_model.dart';

class GetLocalJson implements ILocalStorage {
  @override
  Future<List<MetValueModel>> getAllData() async {
    var file = await rootBundle.loadString('lib/assets/met_values.json');
    Map data = jsonDecode(file);

    List<MetValueModel> finalData = [];

    data.forEach((key, value) {
      finalData.add(MetValueModel.fromJson({key: value}));
    });

    return finalData;
  }
}
