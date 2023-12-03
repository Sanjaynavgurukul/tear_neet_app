import 'package:tyarineetki/model/variable_converter.dart';

class BannerModel {
  String? image;

  //default constructor

  BannerModel({this.image});

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
      image: VariableConverter.convertVariable(
          data: json['image'], variableType: 'String'));
}
