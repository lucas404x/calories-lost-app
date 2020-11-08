import 'package:flutter/material.dart';

import '../models/met_value_model.dart';
import '../services/get_local_json.dart';
import 'calories_controller.dart';

class CaloriesPage extends StatefulWidget {
  final Map data;

  CaloriesPage(this.data);

  @override
  _CaloriesPageState createState() => _CaloriesPageState();
}

class _CaloriesPageState extends State<CaloriesPage> {
  final caloriesController = CaloriesController(GetLocalJson());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<MetValueModel>>(
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Text(snapshot.data[0].metPoint.toString()),
              );
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          },
          future: caloriesController.getData()),
    );
  }
}
