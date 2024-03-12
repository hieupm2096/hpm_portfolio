import 'package:hpm_portfolio/data/models/models.dart';
import 'package:hpm_portfolio/data/repos/repositories.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'work_controller.g.dart';

@Riverpod(keepAlive: true)
Future<List<PostModel>> getWorks(GetWorksRef ref) async {
  final result = await ref.read(postRepositoryProvider).getWorks();
  return result.when(
    success: (success) => success,
    failure: (failure) => throw failure,
  );
}
