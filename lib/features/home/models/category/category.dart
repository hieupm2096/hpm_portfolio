import 'package:json_annotation/json_annotation.dart';

/// id : 1
/// name : "work"

part 'category.g.dart';

@JsonSerializable()
class Category {
  Category({
    this.id,
    this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  final num? id;
  final String? name;
}
