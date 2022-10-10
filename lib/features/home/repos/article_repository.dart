import 'package:hpm_portfolio/core/exceptions/exceptions.dart';
import 'package:hpm_portfolio/core/models/models.dart';
import 'package:hpm_portfolio/features/home/data_sources/article/article_remote_data_source.dart';
import 'package:hpm_portfolio/features/home/models/models.dart';

abstract class IArticleRepository {
  Future<Result<List<ArticleModel>, Exception>> getWorks();

  Future<Result<List<ArticleModel>, Exception>> getArticles();
}

class ArticleRepository implements IArticleRepository {
  ArticleRepository({required ArticleRemoteDataSource articleRemoteDataSource})
      : _articleRemoteDataSource = articleRemoteDataSource;

  final ArticleRemoteDataSource _articleRemoteDataSource;

  @override
  Future<Result<List<ArticleModel>, Exception>> getArticles() async {
    try {
      final response = await _articleRemoteDataSource.getArticles(
        category: 'article',
        pagination: Pagination(page: 1, pageSize: 100).toJson(),
      );
      final data = response.data;
      if (data == null) {
        return Result.failure(CommonNetworkException());
      }
      return Result.success(data);
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }

  @override
  Future<Result<List<ArticleModel>, Exception>> getWorks() async {
    try {
      final response = await _articleRemoteDataSource.getArticles(
        category: 'work',
        pagination: Pagination(page: 1, pageSize: 100).toJson(),
      );
      final data = response.data;
      if (data == null) {
        return Result.failure(CommonNetworkException());
      }
      return Result.success(data);
    } on Exception catch (e) {
      return Result.failure(e);
    }
  }
}
