import 'package:homyyy/core/typedefs/typedefs.dart';

class OSBBModel {
  ///uid
  final String id;
  final String name;
  final String imagePath;
  //can be extended to th latlon
  final String address;

  const OSBBModel(
      {required this.id,
      required this.name,
      required this.imagePath,
      required this.address});

  factory OSBBModel.fromJson(Json json) {
    return OSBBModel(
        id: json['id'],
        name: json['name'],
        imagePath: json['imagePath'],
        address: json['address']);
  }
}
