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
                          e.data() as Map<String,dynamic>, e.id))));
}

class SubjectModelData {
  String? icon;
  String? type;
  String? id;
  String? label;

  SubjectModelData({this.icon, this.type, this.id,this.label});

  factory SubjectModelData.fromJson(Map<String, dynamic> json, String docId) =>
      SubjectModelData(
          icon: VariableConverter.convertVariable(
              data: json['icon'], variableType: 'String'),
          type: VariableConverter.convertVariable(
              data: json['type'], variableType: 'String'),
          label: VariableConverter.convertVariable(
              data: json['label'], variableType: 'String'),
          id: docId);
}
