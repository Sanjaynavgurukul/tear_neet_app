import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyarineetki/model/variable_converter.dart';

class ActiveSubModel {
  num? amount;
  DateTime? create_at;

  ActiveSubModel({
    this.amount,
    this.create_at,
  });

  factory ActiveSubModel.fromJson(Map<String, dynamic> json) =>
      ActiveSubModel(
          amount: VariableConverter.convertVariable(
              data: json['amount'], variableType: 'int'),
          create_at: getDate(json['create_at']));

  static DateTime? getDate(Timestamp? time) {
    if (time == null) {
      return null;
    }

    try {
      return time.toDate();
    } catch (e) {
      return null;
    }
  }
}
