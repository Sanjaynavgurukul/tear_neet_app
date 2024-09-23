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
                          e.data() as Map<String, dynamic>))));
}

class ChapterModelData {
  String? label;
  String? description;
  String? totalTimeInMin;
  num? itemPrice;
  num? type;
  String? pdfLink;
  bool? isPaid;
  num? index;

  ChapterModelData(
      {this.label,
      this.description,
      this.isPaid,
      this.itemPrice,
      this.pdfLink,
      this.type,
      this.totalTimeInMin,
      this.index});

  factory ChapterModelData.fromJson(Map<String, dynamic> json) =>
      ChapterModelData(
        label: VariableConverter.convertVariable(
            data: json['label'], variableType: 'String'),
        isPaid: VariableConverter.convertVariable(
            data: json['is_paid'], variableType: 'bool'),
        description: VariableConverter.convertVariable(
            data: json['description'], variableType: 'String'),
        itemPrice: VariableConverter.convertVariable(
            data: json['itemPrice'], variableType: 'int'),
        pdfLink: VariableConverter.convertVariable(
            data: json['pdfLink'], variableType: 'String'),
        type: VariableConverter.convertVariable(
            data: json['type'], variableType: 'int'),
        totalTimeInMin: VariableConverter.convertVariable(
            data: json['totalTimeInMin'], variableType: 'String'),
        index: VariableConverter.convertVariable(
            data: json['index'], variableType: 'int'),
      );

  Map<String, dynamic> toJson() {
    return {
      "label": label,
      "type": type,
      "description": description,
      "itemPrice": itemPrice,
      "pdfLink": pdfLink,
      "totalTimeInMin": totalTimeInMin,
      "index": index,
    };
  }
}
