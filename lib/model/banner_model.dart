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

  //default constructor

  BannerModelData({this.image, this.type});

  factory BannerModelData.fromJson(Map<String, dynamic> json) =>
      BannerModelData(
          image: VariableConverter.convertVariable(
              data: json['image'], variableType: 'String'),
          type: VariableConverter.convertVariable(
              data: json['type'], variableType: 'String'));
}
