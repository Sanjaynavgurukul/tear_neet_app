class UpcomingFeatureModel{
  List<UpcomingFeatureModelData>? list;

  UpcomingFeatureModel({this.list});

  factory UpcomingFeatureModel.fromJson(Map<String, dynamic> json) => UpcomingFeatureModel(
    list: json.containsKey('list')
        ? List<UpcomingFeatureModelData>.from(
        json["list"].map((x) => UpcomingFeatureModelData.fromJson(x)))
        : [],
  );
}

class UpcomingFeatureModelData{
  String? imageUrl;

  UpcomingFeatureModelData({this.imageUrl});

  factory UpcomingFeatureModelData.fromJson(String data)=>UpcomingFeatureModelData(
      imageUrl:data
  );
}