import 'package:calories_lost_app/shared/widgets/text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * .1, bottom: size.height * .1),
              child: FlutterLogo(size: size.height * .2),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: TextFieldApp(
                prefixIcon: Icon(Icons.fitness_center),
                hintText: "Weight",
                suffixText: "Kg",
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: TextFieldApp(
                  hintText: "Exercise time",
                  suffixText: "Min",
                  prefixIcon: Icon(Icons.timer),
                )),
          ],
        ),
      ),
    );
  }
}
