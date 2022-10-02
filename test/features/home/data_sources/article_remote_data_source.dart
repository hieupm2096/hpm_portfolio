import 'package:flutter_test/flutter_test.dart';
import 'package:hpm_portfolio/core/network/dio_initializer.dart';
import 'package:hpm_portfolio/features/home/data_sources/article/article_remote_data_source.dart';

void main() {
  test(
    'getArticles',
        () async {
      final articleRemoteDataSource = ArticleRemoteDataSource(
        DioInitializer.dio,
        baseUrl: 'http://localhost:1337',
      );

      final response = await articleRemoteDataSource.getArticles();
      final title = response.data?.first.title;

      expect(title, "The internet's Own boy");
    },
  );
}
