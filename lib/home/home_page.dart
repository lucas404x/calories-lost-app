import 'home_controller.dart';
import '../shared/widgets/text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _homeController = HomeController(GlobalKey<FormState>());
  TextEditingController _weightController = TextEditingController();
  TextEditingController _exerciseTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _homeController.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: _size.height * .1, bottom: _size.height * .1),
                child: FlutterLogo(size: _size.height * .2),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: TextFieldApp(
                  controller: _weightController,
                  validator: _homeController.validator,
                  prefixIcon: Icon(Icons.fitness_center),
                  hintText: "Weight",
                  suffixText: "Kg",
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: TextFieldApp(
                    controller: _exerciseTimeController,
                    validator: _homeController.validator,
                    hintText: "Exercise time",
                    suffixText: "Min",
                    prefixIcon: Icon(Icons.timer),
                  )),
              SizedBox(
                height: _size.height * .01,
              ),
              ElevatedButton(
                onPressed: () => _homeController.toResultPage(context, {
                  'weight': _weightController.text,
                  'exerciseTime': _exerciseTimeController.text
                }),
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
