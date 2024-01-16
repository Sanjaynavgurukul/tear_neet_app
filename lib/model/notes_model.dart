import 'package:tyarineetki/model/variable_converter.dart';

class NoteModel {
  String? notesTitle;
  String? notesDescription;
  String? noteUrl;

  //default Cosntructor :D
  NoteModel(
      {this.notesTitle,
      this.notesDescription,
      this.noteUrl,
      });

  factory NoteModel.fromJson(Map<String, dynamic> json) => NoteModel(
      notesTitle: VariableConverter.convertVariable(
          data: json['notesTitle'], variableType: 'String'),
      notesDescription: VariableConverter.convertVariable(
          data: json['notesDescription'], variableType: 'String'),
      noteUrl: VariableConverter.convertVariable(
          data: json['noteUrl'], variableType: 'String'),);
}
