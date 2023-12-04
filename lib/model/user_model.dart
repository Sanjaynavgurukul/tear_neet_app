import 'package:tyarineetki/model/variable_converter.dart';

class UserModel {
  String? userName;
  String? userEmailId;
  String? aboutUs;
  String? imageUrl;

  //Default Constructor :D
  UserModel({
    this.userName,
    this.userEmailId,
    this.aboutUs,
    this.imageUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userName: VariableConverter.convertVariable(
            data: json['userName'], variableType: 'String'),
        userEmailId: VariableConverter.convertVariable(
            data: json['userEmailId'], variableType: 'String'),
        aboutUs: VariableConverter.convertVariable(
            data: json['aboutUs'], variableType: 'String'),
        imageUrl: VariableConverter.convertVariable(
            data: json['imageUrl'], variableType: 'String'),
      );

      Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'userEmailId': userEmailId,
      'aboutUs': aboutUs,
      'imageUrl': imageUrl
    };
  }
}

