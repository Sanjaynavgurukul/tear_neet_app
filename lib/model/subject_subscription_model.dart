import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyarineetki/model/variable_converter.dart';

class SubjectSubscription {
  List<SubjectSubscriptionData>? data;

  SubjectSubscription({this.data});

  factory SubjectSubscription.fromJson(List<QueryDocumentSnapshot>? docs) =>
      SubjectSubscription(
          data: docs == null
              ? []
              : docs.isEmpty
              ? []
              : List<SubjectSubscriptionData>.from(docs.map((e) =>
              SubjectSubscriptionData.fromJson(
                  e.data() as Map<String, dynamic>))));
}

class SubjectSubscriptionData {
  String? amountPaid;
  bool? expired;
  String? userId;

  SubjectSubscriptionData(
      {this.userId, this.amountPaid, this.expired,});

  factory SubjectSubscriptionData.fromJson(Map<String, dynamic> json) =>
      SubjectSubscriptionData(
        userId: VariableConverter.convertVariable(
            data: json['userId'], variableType: 'String'),
        amountPaid: VariableConverter.convertVariable(
            data: json['amountPaid'], variableType: 'String'),

        expired: VariableConverter.convertVariable(
            data: json['expired'], variableType: 'bool'),
      );

  Map<String, dynamic> toJson() {
    return {
      "userId": userId,
      "amountPaid": amountPaid,
      "expired": expired,
    };
  }
}
