import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyarineetki/model/variable_converter.dart';

class SubjectModel {
  List<SubjectModelData>? data;

  SubjectModel({this.data});

  factory SubjectModel.fromJson(List<QueryDocumentSnapshot>? docs) =>
      SubjectModel(
          data: docs == null
              ? []
              : docs.isEmpty
                  ? []
                  : List<SubjectModelData>.from(docs.map((e) =>
                      SubjectModelData.fromJson(
                          e.data() as Map<String, dynamic>, e.id))));
}

class SubjectModelData {
  String? icon;
  num? type;
  String? id;
  String? label;
  List<SubjectTypes>? subject_type;

  SubjectModelData(
      {this.icon, this.type, this.id, this.label, this.subject_type});

  factory SubjectModelData.fromJson(Map<String, dynamic> json, String docId) =>
      SubjectModelData(
          icon: VariableConverter.convertVariable(
              data: json['icon'], variableType: 'String'),
          type: VariableConverter.convertVariable(
              data: json['type'], variableType: 'int'),
          label: VariableConverter.convertVariable(
              data: json['label'], variableType: 'String'),
          subject_type: json.containsKey('subject_type') &&
                  json['subject_type'] != null
              ? List<SubjectTypes>.from(json['subject_type']
                  .map((e) => SubjectTypes.fromJson(e as Map<String, dynamic>)))
              : [],
          id: docId);
}

class SubjectTypes {
  String? label;
  num? type;

  SubjectTypes({this.label, this.type});

  factory SubjectTypes.fromJson(Map<String, dynamic> json) => SubjectTypes(
        label: VariableConverter.convertVariable(
            data: json['label'], variableType: 'String'),
        type: VariableConverter.convertVariable(
            data: json['type'], variableType: 'int'),
      );
}
