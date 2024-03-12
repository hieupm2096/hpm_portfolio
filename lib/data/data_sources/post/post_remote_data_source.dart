import 'package:dio/dio.dart';
import 'package:hpm_portfolio/core/core.dart';
import 'package:hpm_portfolio/data/models/models.dart';
import 'package:hpm_portfolio/gen/env.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
PostRemoteDataSource postRDS(PostRDSRef ref) {
  return PostRemoteDataSource(ref.read(dioProvider), baseUrl: Env.host);
}

@RestApi()
abstract class PostRemoteDataSource {
  factory PostRemoteDataSource(Dio dio, {String baseUrl}) =
      _PostRemoteDataSource;

  @GET('/api/posts')
  Future<BaseResponse<List<PostModel>>> getPosts({
    @Query('populate[cover][fields]') String coverFields = 'name,url',
    @Query('populate[category][fields]') String categoryFields = 'name',
    @Query(r'filters[category][name][$eq]') String? category,
    @Query('sort') String? sort = 'publishedAt:desc',
    @Query('pagination[page]') int page = 1,
    @Query('pagination[pageSize]') int pageSize = 100,
  });
}
