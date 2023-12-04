import 'package:tyarineetki/model/variable_converter.dart';

class SubscriptionModel {
  String? amount;
  num? duration;
  String? subName;
  String? description;
  String? type;
  List<String>? packageIncludes;

  SubscriptionModel({
    this.type,
    this.amount,
    this.duration,
    this.description,
    this.packageIncludes,
    this.subName,
  });

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      SubscriptionModel(
        type: VariableConverter.convertVariable(
            data: json['type'], variableType: 'String'),
        description: VariableConverter.convertVariable(
            data: json['description'], variableType: 'String'),
        amount: VariableConverter.convertVariable(
            data: json['amount'], variableType: 'String'),
        duration: VariableConverter.convertVariable(
            data: json['duration'], variableType: 'int'),
        subName: VariableConverter.convertVariable(
            data: json['subName'], variableType: 'String'),
        packageIncludes: json['packageIncludes'] != null
            ? List<String>.from(json["packageIncludes"].map((x) => x))
            : [],
      );
}
