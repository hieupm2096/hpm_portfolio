import 'package:hpm_portfolio/core/models/base_response/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'about_model.g.dart';

/// title: string
@JsonSerializable()
class AboutModel {
  AboutModel({
    this.id,
    this.title,
    this.content,
    this.intro,
    this.phone,
    this.linkedin,
    this.github,
    this.email,
  });

  factory AboutModel.fromJson(Map<String, dynamic> json) =>
      _$AboutModelFromJson(json);

  final int? id;
  final String? title;
  final String? content;
  final String? intro;
  final String? phone;
  final String? linkedin;
  final String? github;
  final String? email;
}

typedef AboutResponse = BaseResponse<AboutModel>;
