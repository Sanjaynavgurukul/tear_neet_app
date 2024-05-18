import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyarineetki/model/variable_converter.dart';

class ChapterModel {
  List<ChapterModelData>? data;

  ChapterModel({this.data});

  factory ChapterModel.fromJson(List<QueryDocumentSnapshot>? docs) =>
      ChapterModel(
          data: docs == null
              ? []
              : docs.isEmpty
                  ? []
                  : List<ChapterModelData>.from(docs.map((e) =>
                      ChapterModelData.fromJson(
                          e.data() as Map<String, dynamic>,e.id))));
}

class ChapterModelData {
  String? label;
  String? description;
  String? totalTimeInMin;
  num? itemPrice;
  String? pdfLink;
  num? index;
  bool? isPaid;
  String? id;
  String? type;

  ChapterModelData(
      {this.label,
      this.description,
      this.itemPrice,
      this.isPaid,
      this.id,
      this.type,
      this.pdfLink,
      this.totalTimeInMin,
      this.index});

  factory ChapterModelData.fromJson(Map<String, dynamic> json,String docId) =>
      ChapterModelData(
        id: docId,
        label: VariableConverter.convertVariable(
            data: json['label'], variableType: 'String'),
        description: VariableConverter.convertVariable(
            data: json['description'], variableType: 'String'),
        itemPrice: VariableConverter.convertVariable(
            data: json['itemPrice'], variableType: 'int'),
        pdfLink: VariableConverter.convertVariable(
            data: json['pdfLink'], variableType: 'String'),
        type: VariableConverter.convertVariable(
            data: json['type'], variableType: 'String'),
        totalTimeInMin: VariableConverter.convertVariable(
            data: json['totalTimeInMin'], variableType: 'String'),
        index: VariableConverter.convertVariable(
            data: json['index'], variableType: 'int'), isPaid: VariableConverter.convertVariable(
            data: json['isPaid'], variableType: 'bool'),
      );

  Map<String, dynamic> toJson() {
    return {
      "label": label,
      "description": description,
      "itemPrice": itemPrice,
      "pdfLink": pdfLink,
      "totalTimeInMin": totalTimeInMin,
      "type": type,
      "index": index,
      "isPaid": isPaid,
    };
  }
}
