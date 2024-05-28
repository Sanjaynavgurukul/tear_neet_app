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
  String? type;
  String? id;
  String? label;

  List<SubjectTypeModel>? subject_type;

  SubjectModelData({this.icon, this.type, this.id, this.label,this.subject_type});

  factory SubjectModelData.fromJson(Map<String, dynamic> json, String docId) =>
      SubjectModelData(
          icon: VariableConverter.convertVariable(
              data: json['icon'], variableType: 'String'),
          type: VariableConverter.convertVariable(
              data: json['type'], variableType: 'String'),
          label: VariableConverter.convertVariable(
              data: json['label'], variableType: 'String'),
          id: docId,
        subject_type: json.containsKey('subject_type')
          ? List<SubjectTypeModel>.from(
          json["subject_type"].map((x) => SubjectTypeModel.fromJson(x)))
          : [],);
}

class SubjectTypeModel {
  String? type;
  String? label;

  SubjectTypeModel({this.type, this.label});

  factory SubjectTypeModel.fromJson(Map<String, dynamic> json)=>
      SubjectTypeModel(
        type: VariableConverter.convertVariable(data: json['type'], variableType: 'String'),
        label: VariableConverter.convertVariable(data: json['label'], variableType: 'String')
      );
}