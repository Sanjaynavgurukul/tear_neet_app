import 'package:tyarineetki/model/variable_converter.dart';

class UserModel {
  String? userName;
  String? userEmailId;
  String? aboutUs;
  String? imageUrl;
  String? phoneNumber;

  //Default Constructor :D
  UserModel({
    this.userName,
    this.userEmailId,
    this.aboutUs,
    this.imageUrl,
    this.phoneNumber
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
        phoneNumber: VariableConverter.convertVariable(
            data: json['phoneNumber'], variableType: 'String'),    
      );

  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
     aboutUs: map   ['aboutUs'],
     userEmailId: map   ['userEmailId'],
     imageUrl: map   ['imageUrl'],
     phoneNumber: map   ['phoneNumber'],
    userName: map   ['userName'],
      );

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'userEmailId': userEmailId,
      'aboutUs': aboutUs,
      'phoneNumber':phoneNumber,
      'imageUrl': imageUrl
    };
  }
}
