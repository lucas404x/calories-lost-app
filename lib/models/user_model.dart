import 'package:flutter/foundation.dart';

class UserModel {
  final double weight;
  final double exerciseTime;

  UserModel({@required this.weight, @required this.exerciseTime});

  factory UserModel.fromJson(Map data) => UserModel(
      weight: double.parse(data['weight']),
      exerciseTime: double.parse(data['exerciseTime']));

  Map<String, double> toJson() =>
      {'weight': weight, 'exerciseTime': exerciseTime};
}
