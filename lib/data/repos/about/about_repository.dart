import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hpm_portfolio/core/core.dart';
import 'package:hpm_portfolio/data/data_sources/about/about_remote_data_source.dart';
import 'package:hpm_portfolio/data/models/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'about_repository.g.dart';

@Riverpod(keepAlive: true)
IAboutRepository aboutRepository(AboutRepositoryRef ref) =>
    AboutRepository(ref);

abstract class IAboutRepository {
  Future<Result<AboutModel, Exception>> getAbout();
}

class AboutRepository implements IAboutRepository {
  const AboutRepository(this.ref);

  final Ref ref;

  @override
  Future<Result<AboutModel, Exception>> getAbout() async {
    try {
      final response = await ref.read(aboutRDSProvider).getAbout();
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
