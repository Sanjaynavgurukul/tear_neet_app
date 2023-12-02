import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyarineetki/model/variable_converter.dart';

class ChatGroupModel {
  String? groupName;
  String? groupLogo;
  String? groupType;
  String? groupBio;
  String? lastMessage;
  String? totalMemberJoined;
  Timestamp? lastChatTime;
  String? lastChatUserName;

  //default Consructor :D
  ChatGroupModel({
    this.groupBio,
    this.groupLogo,
    this.groupName,
    this.groupType,
    this.lastChatTime,
    this.lastChatUserName,
    this.lastMessage,
    this.totalMemberJoined,
  });

  factory ChatGroupModel.fromJson(Map<String, dynamic> json) => ChatGroupModel(
        groupBio: VariableConverter.convertVariable(
            data: json['groupBio'], variableType: 'String'),
        groupLogo: VariableConverter.convertVariable(
            data: json['groupLogo'], variableType: 'String'),
        groupName: VariableConverter.convertVariable(
            data: json['groupName'], variableType: 'String'),
        groupType: VariableConverter.convertVariable(
            data: json['groupType'], variableType: 'String'),
        lastChatTime: json['lastChatTime'],
        lastChatUserName: VariableConverter.convertVariable(
            data: json['lastChatUserName'], variableType: 'String'),
        lastMessage: VariableConverter.convertVariable(
            data: json['lastMessage'], variableType: 'String'),
        totalMemberJoined: VariableConverter.convertVariable(
            data: json['totalMemberJoined'], variableType: 'num'),
      );

  Map<String,dynamic> getData(){
    return {
      "groupBio":"3rd December kha likha h agreement mein",
      "groupLogo":"https://cdn3.iconfinder.com/data/icons/online-learning-vol-1-2/64/Exam-512.png",
      "groupName":"Exam Discussio",
      "groupType":"EXAM_DISCUSSION",
      "lastChatTime":FieldValue.serverTimestamp(),
      "lastChatUserName":"873_UHGSss",
      "lastMessage":"Hi here",
      "totalMemberJoined":232,
    };
  }
}
