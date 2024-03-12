import 'package:hpm_portfolio/data/models/models.dart';
import 'package:hpm_portfolio/data/repos/repositories.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'blog_controller.g.dart';

@Riverpod(keepAlive: true)
Future<List<PostModel>> getBlogs(GetBlogsRef ref) async {
  final result = await ref.read(postRepositoryProvider).getBlogs();
  return result.when(
    success: (success) => success,
    failure: (failure) => throw failure,
  );
}
