import 'package:tyarineetki/model/variable_converter.dart';

class LeaderBoardListModel {
  String? coverImage;
  String? label;
  String? type;
  String? description;

  //default cosntructor :D
  LeaderBoardListModel(
      {this.type, this.description, this.coverImage, this.label});

  factory LeaderBoardListModel.fromJson(Map<String, dynamic> json) =>
      LeaderBoardListModel(
        type: VariableConverter.convertVariable(
            data: json['type'], variableType: 'String'),
        label: VariableConverter.convertVariable(
            data: json['label'], variableType: 'String'),
        coverImage: VariableConverter.convertVariable(
            data: json['coverImage'], variableType: 'String'),
        description: VariableConverter.convertVariable(
            data: json['description'], variableType: 'String'),
      );
}
