import 'dart:convert';
import 'package:flutter/services.dart';
import '../data/local_storage_interface.dart';

class GetLocalJson implements ILocalStorage {
  @override
  Future<Map> getAllData() async {
    var file = await rootBundle.loadString('lib/assets/met_values.json');
    return jsonDecode(file);
  }
}
