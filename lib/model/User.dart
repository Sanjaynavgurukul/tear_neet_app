import 'package:tyarineetki/model/variable_converter.dart';

class CurrentUser {
  String? name;
  String? email;
  String? phone;
  String? profile;

  CurrentUser({this.email, this.name, this.phone, this.profile});

  factory CurrentUser.fromJson(Map<String, dynamic> json) => CurrentUser(
        email: VariableConverter.convertVariable(
            data: json['email'], variableType: "String"),
        name: VariableConverter.convertVariable(
            data: json['name'], variableType: "String"),
        phone: VariableConverter.convertVariable(
            data: json['phone'], variableType: "String"),
        profile: VariableConverter.convertVariable(
            data: json['profile'], variableType: "String"),
      );
}
