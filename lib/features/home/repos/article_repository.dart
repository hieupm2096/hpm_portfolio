import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hpm_portfolio/core/exceptions/exceptions.dart';
import 'package:hpm_portfolio/core/models/models.dart';
import 'package:hpm_portfolio/features/home/data_sources/article/article_remote_data_source.dart';
import 'package:hpm_portfolio/features/home/models/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_repository.g.dart';

@Riverpod(keepAlive: true)
IArticleRepository articleRepository(ArticleRepositoryRef ref) {
  return ArticleRepository(ref);
}

abstract class IArticleRepository {
  Future<Result<List<ArticleModel>, Exception>> getWorks();

  Future<Result<List<ArticleModel>, Exception>> getArticles();
}

class ArticleRepository implements IArticleRepository {
  ArticleRepository(this.ref);

  final Ref ref;

  @override
  Future<Result<List<ArticleModel>, Exception>> getArticles() async {
    try {
      final response = await ref.read(articleRDSProvider).getArticles(
        category: 'blog',
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
      final response = await ref.read(articleRDSProvider).getArticles(
        category: 'work',
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
