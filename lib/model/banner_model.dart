import 'package:tyarineetki/model/variable_converter.dart';

class BannerModel {
  List<BannerModelData>? data;

  BannerModel({this.data});

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
        data: json.containsKey('bannerList')
            ? List<BannerModelData>.from(
                json["bannerList"].map((x) => BannerModelData.fromJson(x)))
            : [],
      );
}

class BannerModelData {
  String? image;
  String? ctaType;
  String? pdfLink;
  String? label;

  //default constructor

  BannerModelData({this.image, this.ctaType, this.pdfLink,this.label});

  factory BannerModelData.fromJson(Map<String, dynamic> json) =>
      BannerModelData(
          image: VariableConverter.convertVariable(
              data: json['image'], variableType: 'String'),
          ctaType: VariableConverter.convertVariable(
              data: json['ctaType'], variableType: 'String'),
          label: VariableConverter.convertVariable(
              data: json['label'], variableType: 'String'),
          pdfLink: VariableConverter.convertVariable(
              data: json['pdfLink'], variableType: 'String'));
}
