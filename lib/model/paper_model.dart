import 'package:tyarineetki/model/variable_converter.dart';

class PaperModel {
  String? coverImage;
  String? paperTitle;
  String? type;

  //default Cosntructor :D
  PaperModel({this.coverImage, this.paperTitle, this.type});

  factory PaperModel.fromJson(Map<String, dynamic> json) => PaperModel(
        coverImage: VariableConverter.convertVariable(
            data: json['coverImage'], variableType: 'String'),
        paperTitle: VariableConverter.convertVariable(
            data: json['paperTitle'], variableType: 'String'),
        type: VariableConverter.convertVariable(
            data: json['type'], variableType: 'String'),
      );
}
