import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';

/// id : 3
/// name : "the-internet-s-own-boy"
/// url : "/uploads/the_internet_s_own_boy_69138468d6.jpg"
/// width : 1200
/// height : 707
@JsonSerializable()
class ImageModel {
  ImageModel({
    this.id,
    this.name,
    this.url,
    this.width,
    this.height,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  final int? id;
  final String? name;
  final String? url;
  final int? width;
  final int? height;
}
