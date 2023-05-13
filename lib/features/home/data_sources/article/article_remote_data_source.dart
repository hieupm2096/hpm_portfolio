import 'package:dio/dio.dart';
import 'package:hpm_portfolio/core/core.dart';
import 'package:hpm_portfolio/features/home/models/models.dart';
import 'package:hpm_portfolio/gen/env.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
ArticleRemoteDataSource articleRDS(ArticleRDSRef ref) {
  return ArticleRemoteDataSource(ref.read(dioProvider), baseUrl: Env.host);
}

@RestApi()
abstract class ArticleRemoteDataSource {
  factory ArticleRemoteDataSource(Dio dio, {String baseUrl}) =
      _ArticleRemoteDataSource;

  @GET('/api/articles')
  Future<BaseResponse<List<ArticleModel>>> getArticles({
    @Query('populate[cover][fields]') String coverFields = 'name,url',
    @Query('populate[category][fields]') String categoryFields = 'name',
    @Query('populate[author][fields]') String authorFields = 'name',
    @Query(r'filters[category][name][$eq]') String? category,
    @Query('sort') String? sort = 'publishedAt:desc',
    @Query('pagination[page]') int page = 1,
    @Query('pagination[pageSize]') int pageSize = 100,
  });
}
