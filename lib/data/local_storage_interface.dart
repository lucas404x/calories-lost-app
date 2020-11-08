import '../models/met_value_model.dart';

abstract class ILocalStorage {
  Future<List<MetValueModel>> getAllData();
}
