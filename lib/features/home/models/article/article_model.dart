import 'package:hpm_portfolio/core/models/models.dart';
import 'package:hpm_portfolio/features/home/models/category/category_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article_model.g.dart';

/// id : 1
/// title : "The internet's Own boy"
/// description : "Follow the story of Aaron Swartz, the boy who could change 
/// the world"
/// slug : "the-internet-s-own-boy"
/// createdAt : "2022-09-27T16:35:01.535Z"
/// updatedAt : "2022-09-28T14:15:51.776Z"
/// publishedAt : "2022-09-27T16:35:01.528Z"
/// note : null
/// cover : {"id":3,"name":"the-internet-s-own-boy","url":"/uploads/the_internet_s_own_boy_69138468d6.jpg","width":1200,"height":707}
/// category : {"id":1,"name":"work"}

@JsonSerializable()
class ArticleModel {
  ArticleModel({
    this.id,
    this.title,
    this.description,
    this.slug,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.note,
    this.cover,
    this.category,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);

  final num? id;
  final String? title;
  final String? description;
  final String? slug;

  @JsonKey(fromJson: dateTimeFromIso)
  final DateTime? createdAt;

  @JsonKey(fromJson: dateTimeFromIso)
  final DateTime? updatedAt;

  @JsonKey(fromJson: dateTimeFromIso)
  final DateTime? publishedAt;

  final String? note;
  final ImageModel? cover;
  final CategoryModel? category;
}
