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
  String? chapterId;
  String? amountPaid;
  bool? expired;
  String? userId;

  SubjectSubscriptionData(
      {this.userId, this.amountPaid, this.chapterId, this.expired,});

  factory SubjectSubscriptionData.fromJson(Map<String, dynamic> json) =>
      SubjectSubscriptionData(
        userId: VariableConverter.convertVariable(
            data: json['userId'], variableType: 'String'),
        amountPaid: VariableConverter.convertVariable(
            data: json['amountPaid'], variableType: 'String'),
        chapterId: VariableConverter.convertVariable(
            data: json['chapterId'], variableType: 'String'),
        expired: VariableConverter.convertVariable(
            data: json['expired'], variableType: 'bool'),
      );

  Map<String, dynamic> toJson() {
    return {
      "userId": userId,
      "amountPaid": amountPaid,
      "chapterId": chapterId,
      "expired": expired,
    };
  }
}
