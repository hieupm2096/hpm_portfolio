// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AboutModel _$AboutModelFromJson(Map<String, dynamic> json) => AboutModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      intro: json['intro'] as String?,
      phone: json['phone'] as String?,
      linkedin: json['linkedin'] as String?,
      github: json['github'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$AboutModelToJson(AboutModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'intro': instance.intro,
      'phone': instance.phone,
      'linkedin': instance.linkedin,
      'github': instance.github,
      'email': instance.email,
    };
