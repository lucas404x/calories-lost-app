import '../../data/local_storage_interface.dart';
import '../../models/met_value_model.dart';

class CaloriesController {
  ILocalStorage _localStorage;

  CaloriesController(this._localStorage);

  Future<List<MetValueModel>> getData() => _localStorage.getAllData();
}
