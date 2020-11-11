import '../../models/user_model.dart';
import 'package:flutter/material.dart';

import '../../services/get_local_json.dart';
import 'calories_controller.dart';

class CaloriesPage extends StatefulWidget {
  final UserModel data;

  CaloriesPage(this.data);

  @override
  _CaloriesPageState createState() => _CaloriesPageState(data);
}

class _CaloriesPageState extends State<CaloriesPage> {
  UserModel _userData;

  _CaloriesPageState(this._userData);

  @override
  Widget build(BuildContext context) {
    final caloriesController = CaloriesController(GetLocalJson(), _userData);
    var _size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(
      children: [
        FutureBuilder<List<Map>>(
            builder: (_, snapshot) => snapshot.hasData
                ? SingleChildScrollView(
                    padding: EdgeInsets.only(top: 30.0),
                    child: DataTable(
                        columnSpacing: 35.0,
                        columns: [
                          DataColumn(label: Text('Exercises')),
                          DataColumn(label: Text('Calories'))
                        ],
                        rows: snapshot.data
                            .map((Map met) => DataRow(cells: [
                                  DataCell(Text(met['exercises'])),
                                  DataCell(Text(met['calories']))
                                ]))
                            .toList()),
                  )
                : Center(child: CircularProgressIndicator()),
            future: caloriesController.getData()),
        Positioned(
          top: _size.height * .9,
          left: _size.width * .35,
          child: RaisedButton(
            color: Colors.blue,
            onPressed: () => caloriesController.backToHome(context),
            child: Text(
              'Back to Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    ));
  }
}
