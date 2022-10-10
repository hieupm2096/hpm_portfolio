// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) => ArticleModel(
      id: json['id'] as num?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      createdAt: dateTimeFromIso(json['createdAt'] as String?),
      updatedAt: dateTimeFromIso(json['updatedAt'] as String?),
      publishedAt: dateTimeFromIso(json['publishedAt'] as String?),
      note: json['note'] as String?,
      cover: json['cover'] == null
          ? null
          : ImageModel.fromJson(json['cover'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleModelToJson(ArticleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'slug': instance.slug,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'note': instance.note,
      'cover': instance.cover,
      'category': instance.category,
    };
