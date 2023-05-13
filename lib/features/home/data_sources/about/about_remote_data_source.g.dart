// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_remote_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _AboutRemoteDataSource implements AboutRemoteDataSource {
  _AboutRemoteDataSource(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BaseResponse<AboutModel>> getAbout() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<AboutModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/about',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<AboutModel>.fromJson(
      _result.data!,
      (json) => AboutModel.fromJson(json as Map<String, dynamic>),
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

String _$aboutRDSHash() => r'4855b03b3d067911515220ff5ff43ec89d7042d1';

/// See also [aboutRDS].
@ProviderFor(aboutRDS)
final aboutRDSProvider = Provider<AboutRemoteDataSource>.internal(
  aboutRDS,
  name: r'aboutRDSProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$aboutRDSHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AboutRDSRef = ProviderRef<AboutRemoteDataSource>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
