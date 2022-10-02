import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

/// data : {}
/// error : {"status":0,"name":"string","message":"string","details":{}}
@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  BaseResponse({
    this.data,
    this.error,
  });

  /// Convert json to response model
  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseResponseFromJson(json, fromJsonT);

  T? data;
  ErrorMessage? error;
  Meta? meta;
}

/// status : 0
/// name : "string"
/// message : "string"
/// details : {}
@JsonSerializable()
class ErrorMessage {
  ErrorMessage({
    this.status,
    this.name,
    this.message,
    // this.details,
  });

  factory ErrorMessage.fromJson(Map<String, dynamic> json) =>
      _$ErrorMessageFromJson(json);

  final num? status;
  final String? name;
  final String? message;
// final dynamic details;

}

/// pagination : {"page":0,"pageSize":25,"pageCount":1,"total":0}
@JsonSerializable()
class Meta {
  const Meta({this.pagination});

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  final Pagination? pagination;
}

/// page : 0
/// pageSize : 25
/// pageCount : 1
/// total : 0
@JsonSerializable()
class Pagination {
  Pagination({
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);

  final int? page;
  final int? pageSize;
  final int? pageCount;
  final int? total;
}
