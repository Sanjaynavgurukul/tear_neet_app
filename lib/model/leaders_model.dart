import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyarineetki/model/variable_converter.dart';

class LeaderModel {
  String? image;
  num? score;
  String? number;
  String? name;
  String? userId;
  Timestamp? time;

  LeaderModel(
      {this.userId, this.name, this.image, this.number, this.score, this.time});

  factory LeaderModel.fromJson(Map<String, dynamic> json) => LeaderModel(
      userId: VariableConverter.convertVariable(
          data: json['userId'], variableType: 'String'),
      name: VariableConverter.convertVariable(
          data: json['name'], variableType: 'String'),
      image: VariableConverter.convertVariable(
          data: json['image'], variableType: 'String'),
      number: VariableConverter.convertVariable(
          data: json['number'], variableType: 'String'),
      score: VariableConverter.convertVariable(
          data: json['score'], variableType: 'int'),
      time: json['time']);
}
