import 'package:flutter/material.dart';

class MetValueModel {
  final String exercises;
  final double metPoint;

  MetValueModel({@required this.exercises, @required this.metPoint});

  factory MetValueModel.fromJson(Map data) {
    String exercises = data.keys.first;
    return MetValueModel(exercises: exercises, metPoint: double.parse(data[exercises]));
  }

  Map<String, double> toJson() => {exercises: metPoint};
}
