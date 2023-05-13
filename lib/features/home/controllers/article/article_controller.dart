import 'package:hpm_portfolio/features/home/models/article/article_model.dart';
import 'package:hpm_portfolio/features/home/repos/article_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_controller.g.dart';

@Riverpod(keepAlive: true)
Future<List<ArticleModel>> getArticles(GetArticlesRef ref) async {
  final result = await ref.read(articleRepositoryProvider).getArticles();
  return result.when(
    success: (success) => success,
    failure: (failure) => throw failure,
  );
}
