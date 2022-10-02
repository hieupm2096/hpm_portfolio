// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_remote_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ArticleRemoteDataSource implements ArticleRemoteDataSource {
  _ArticleRemoteDataSource(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BaseResponse<List<Article>>> getArticles(
      {coverFields = 'name,url,width,height',
      categoryFields = 'name',
      category,
      sort = 'publishedAt:desc',
      pagination}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'populate[cover][fields]': coverFields,
      r'populate[category][fields]': categoryFields,
      r'populate[category][filters][name][$eq]': category,
      r'sort': sort
    };
    queryParameters.addAll(pagination ?? <String, dynamic>{});
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<List<Article>>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/articles',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<List<Article>>.fromJson(
      _result.data!,
      (json) => (json as List<dynamic>)
          .map<Article>((i) => Article.fromJson(i as Map<String, dynamic>))
          .toList(),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
