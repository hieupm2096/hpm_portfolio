import 'package:hpm_portfolio/core/models/base_response/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'about.g.dart';

/// title: string
@JsonSerializable()
class About {
  About({
    this.id,
    this.title,
  });

  factory About.fromJson(Map<String, dynamic> json) => _$AboutFromJson(json);

  final int? id;
  final String? title;
}

typedef AboutResponse = BaseResponse<About>;
