import 'package:json_annotation/json_annotation.dart';

/// id : 1
/// name : "work"

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  const CategoryModel({
    this.id,
    this.name,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  final num? id;
  final String? name;
}
