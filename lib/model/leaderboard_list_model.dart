import 'package:tyarineetki/model/variable_converter.dart';

class LeaderBoardListModel {
  String? coverImage;
  String? label;
  String? type;
  String? description;
  String? id;
  List<String>? userList;

  //default cosntructor :D
  LeaderBoardListModel(
      {this.id,
      this.type,
      this.description,
      this.coverImage,
      this.label,
      this.userList});

  factory LeaderBoardListModel.fromJson(Map<String, dynamic> json,
          {required String docId}) =>
      LeaderBoardListModel(
        type: VariableConverter.convertVariable(
            data: json['type'], variableType: 'String'),
        id: docId,
        label: VariableConverter.convertVariable(
            data: json['label'], variableType: 'String'),
        coverImage: VariableConverter.convertVariable(
            data: json['coverImage'], variableType: 'String'),
        userList: json['userList'] != null
            ? List<String>.from(json["userList"].map((x) => x))
            : [],
        description: VariableConverter.convertVariable(
            data: json['description'], variableType: 'String'),
      );
}
