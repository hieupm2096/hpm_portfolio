import 'package:hpm_portfolio/features/home/models/about/about_model.dart';
import 'package:hpm_portfolio/features/home/repos/about_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'about_controller.g.dart';

@Riverpod(keepAlive: true)
Future<AboutModel> getAbout(GetAboutRef ref) async {
  final result = await ref.read(aboutRepositoryProvider).getAbout();

  return result.when(
    success: (success) => success,
    failure: (failure) => throw failure,
  );
}
