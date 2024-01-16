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
  String? type;
  String? ctaType;
  String? pdfLink;

  //default constructor

  BannerModelData({this.image, this.type, this.ctaType, this.pdfLink});

  factory BannerModelData.fromJson(Map<String, dynamic> json) =>
      BannerModelData(
          image: VariableConverter.convertVariable(
              data: json['image'], variableType: 'String'),
          ctaType: VariableConverter.convertVariable(
              data: json['ctaType'], variableType: 'String'),
          pdfLink: VariableConverter.convertVariable(
              data: json['pdfLink'], variableType: 'String'),
          type: VariableConverter.convertVariable(
              data: json['type'], variableType: 'String'));
}
