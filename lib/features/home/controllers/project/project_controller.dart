import 'package:hpm_portfolio/data/models/article/article_model.dart';
import 'package:hpm_portfolio/data/repos/article_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_controller.g.dart';

@Riverpod(keepAlive: true)
Future<List<ArticleModel>> getProjects(GetProjectsRef ref) async {
  final result = await ref.read(articleRepositoryProvider).getWorks();
  return result.when(
    success: (success) => success,
    failure: (failure) => throw failure,
  );
}
