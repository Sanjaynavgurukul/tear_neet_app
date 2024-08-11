import 'package:tyarineetki/model/variable_converter.dart';

class CurrentUser {
  String? name;
  String? email;
  String? phone;
  String? profile;
  String? bio;


  CurrentUser({this.email, this.name, this.phone, this.profile, this.bio});

  factory CurrentUser.fromJson(Map<String, dynamic> json) => CurrentUser(
        email: VariableConverter.convertVariable(
            data: json['email'], variableType: "String"),
        name: VariableConverter.convertVariable(
            data: json['name'], variableType: "String"),
        phone: VariableConverter.convertVariable(
            data: json['phone'], variableType: "String"),
        profile: VariableConverter.convertVariable(
            data: json['profile'], variableType: "String"),
        bio: VariableConverter.convertVariable(
            data: json['about'], variableType: "String"),
      );

  Map<String, dynamic> getJson() {
    return {
      'email': email,
      'name': name,
      'phone': phone,
      'profile': profile,
      'about': bio,
    };
  }
}
