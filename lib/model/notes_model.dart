import 'package:tyarineetki/model/variable_converter.dart';

class NoteModel {
  String? notesTitle;
  String? notesDescription;
  String? type;

  //default Cosntructor :D
  NoteModel({this.notesTitle, this.notesDescription, this.type});

  factory NoteModel.fromJson(Map<String, dynamic> json) => NoteModel(
        notesTitle: VariableConverter.convertVariable(
            data: json['notesTitle'], variableType: 'String'),
        notesDescription: VariableConverter.convertVariable(
            data: json['notesDescription'], variableType: 'String'),
        type: VariableConverter.convertVariable(
            data: json['type'], variableType: 'String'),
      );
}
