import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyarineetki/model/variable_converter.dart';

class ChatModel {
  String? message;
  Timestamp? timeStamp;
    String? userId;
  String? userNameId;
  String? profileImage;

  //Default Constructor :D
  ChatModel({
    this.message,
    this.timeStamp,
    this.userId,
    this.userNameId,
    this.profileImage,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        message: VariableConverter.convertVariable(
            data: json['message'], variableType: 'String'),
        timeStamp: VariableConverter.convertVariable(
            data: json['timeStamp'], variableType: 'String'),
        userId: VariableConverter.convertVariable(
            data: json['userId'], variableType: 'String'),
        userNameId: VariableConverter.convertVariable(
            data: json['userNameId'], variableType: 'String'),
        profileImage: VariableConverter.convertVariable(
            data: json['profileImage'], variableType: 'String'),
      );
}
