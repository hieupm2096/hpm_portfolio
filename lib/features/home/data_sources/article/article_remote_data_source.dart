import 'package:dio/dio.dart';
import 'package:hpm_portfolio/core/models/models.dart';
import 'package:hpm_portfolio/features/home/models/models.dart';
import 'package:retrofit/http.dart';

part 'article_remote_data_source.g.dart';

@RestApi()
abstract class ArticleRemoteDataSource {
  factory ArticleRemoteDataSource(Dio dio, {String baseUrl}) =
      _ArticleRemoteDataSource;

  @GET('/api/articles')
  Future<BaseResponse<List<Article>>> getArticles({
    @Query('populate[cover][fields]')
        String coverFields = 'name,url,width,height',
    @Query('populate[category][fields]') String categoryFields = 'name',
    @Query(r'populate[category][filters][name][$eq]') String? category,
    @Query('sort') String? sort = 'publishedAt:desc',
    @Queries() Map<String, dynamic>? pagination,
  });
}
