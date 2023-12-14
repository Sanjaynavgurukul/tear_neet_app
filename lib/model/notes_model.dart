import 'package:tyarineetki/model/variable_converter.dart';

class NoteModel {
  String? notesTitle;
  String? notesDescription;
  String? type;
  String? noteUrl;
  String? subscriptionType;
  bool? isPaid;

  //default Cosntructor :D
  NoteModel(
      {this.notesTitle,
      this.notesDescription,
      this.type,
      this.noteUrl,
      this.subscriptionType,
      this.isPaid});

  factory NoteModel.fromJson(Map<String, dynamic> json) => NoteModel(
      notesTitle: VariableConverter.convertVariable(
          data: json['notesTitle'], variableType: 'String'),
      notesDescription: VariableConverter.convertVariable(
          data: json['notesDescription'], variableType: 'String'),
      type: VariableConverter.convertVariable(
          data: json['type'], variableType: 'String'),
      noteUrl: VariableConverter.convertVariable(
          data: json['noteUrl'], variableType: 'String'),
      subscriptionType: VariableConverter.convertVariable(
          data: json['subscriptionType'], variableType: 'String'),
      isPaid: VariableConverter.convertVariable(
          data: json['isPaid'], variableType: 'bool'));
}
