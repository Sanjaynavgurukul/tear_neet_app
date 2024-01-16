import 'package:tyarineetki/model/variable_converter.dart';

class PaperModel {
  String? coverImage;
  String? id;
  String? paperTitle;
  String? leaderboardDocId;
  String? totalQuestion;
  String? details;
  num? totalTime;
  String? type;
  List<PaperModelSyllabus>? syllabus;

  //default Cosntructor :D
  PaperModel(
      {this.totalQuestion,
      this.id,
      this.coverImage,
      this.leaderboardDocId,
      this.paperTitle,
      this.type,
      this.syllabus,
      this.totalTime,
      this.details});

  factory PaperModel.fromJson(Map<String, dynamic> json, String docId) =>
      PaperModel(
        id: docId,
        coverImage: VariableConverter.convertVariable(
            data: json['coverImage'], variableType: 'String'),
        leaderboardDocId: VariableConverter.convertVariable(
            data: json['leaderboardDocId'], variableType: 'String'),
        paperTitle: VariableConverter.convertVariable(
            data: json['paperTitle'], variableType: 'String'),
        type: VariableConverter.convertVariable(
            data: json['type'], variableType: 'String'),
        totalQuestion: VariableConverter.convertVariable(
            data: json['totalQuestion'], variableType: 'String'),
        details: VariableConverter.convertVariable(
            data: json['details'], variableType: 'String'),
        totalTime: VariableConverter.convertVariable(
            data: json['totalTime'], variableType: 'int'),
        syllabus: json.containsKey('syllabus')
            ? List<PaperModelSyllabus>.from(
                json["syllabus"].map((x) => PaperModelSyllabus.fromJson(x)))
            : [],
      );
}

class PaperModelSyllabus {
  String? label;
  String? value;

  PaperModelSyllabus({this.value, this.label});

  factory PaperModelSyllabus.fromJson(Map<String, dynamic> json) =>
      PaperModelSyllabus(
          value: VariableConverter.convertVariable(
              data: json['value'], variableType: 'String'),
          label: VariableConverter.convertVariable(
              data: json['label'], variableType: 'String'));
}
