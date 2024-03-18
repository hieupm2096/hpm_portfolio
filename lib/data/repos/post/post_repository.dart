import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hpm_portfolio/core/exceptions/exceptions.dart';
import 'package:hpm_portfolio/core/models/models.dart';
import 'package:hpm_portfolio/data/data_sources/data_sources.dart';
import 'package:hpm_portfolio/data/models/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_repository.g.dart';

@Riverpod(keepAlive: true)
PostRepository postRepository(PostRepositoryRef ref) {
  return PostRepository(ref);
}

class PostRepository {
  PostRepository(this.ref);

  final Ref ref;

  Future<Result<List<PostModel>, Exception>> getBlogs() async {
    try {
      final response = await ref.read(postRDSProvider).getPosts(
            category: 'blog',
            sort: 'publishedAt:desc',
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

  Future<Result<List<PostModel>, Exception>> getWorks() async {
    try {
      final response = await ref.read(postRDSProvider).getPosts(
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
