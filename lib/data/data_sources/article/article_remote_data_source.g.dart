// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_remote_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ArticleRemoteDataSource implements ArticleRemoteDataSource {
  _ArticleRemoteDataSource(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BaseResponse<List<ArticleModel>>> getArticles({
    String coverFields = 'name,url',
    String categoryFields = 'name',
    String authorFields = 'name',
    String? category,
    String? sort = 'publishedAt:desc',
    int page = 1,
    int pageSize = 100,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'populate[cover][fields]': coverFields,
      r'populate[category][fields]': categoryFields,
      r'populate[author][fields]': authorFields,
      r'filters[category][name][$eq]': category,
      r'sort': sort,
      r'pagination[page]': page,
      r'pagination[pageSize]': pageSize,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<List<ArticleModel>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/articles',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<List<ArticleModel>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<ArticleModel>(
                  (i) => ArticleModel.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
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

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$articleRDSHash() => r'1f6c6d5ab6891d0f1e3ddb6a42eae9e63f4da4c7';

/// See also [articleRDS].
@ProviderFor(articleRDS)
final articleRDSProvider = Provider<ArticleRemoteDataSource>.internal(
  articleRDS,
  name: r'articleRDSProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$articleRDSHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ArticleRDSRef = ProviderRef<ArticleRemoteDataSource>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
