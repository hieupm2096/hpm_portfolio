import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hpm_portfolio/core/network/dio_initializer.dart';
import 'package:hpm_portfolio/features/home/data_sources/about/about_remote_data_source.dart';
import 'package:hpm_portfolio/features/home/data_sources/article/article_remote_data_source.dart';
import 'package:hpm_portfolio/features/home/repos/about_repository.dart';
import 'package:hpm_portfolio/features/home/repos/article_repository.dart';
import 'package:hpm_portfolio/gen/env.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt
    ..registerLazySingleton<Dio>(() => DioInitializer.dio)
    ..registerLazySingleton<AboutRemoteDataSource>(
      () => AboutRemoteDataSource(getIt(), baseUrl: Env.host),
    )
    ..registerLazySingleton<ArticleRemoteDataSource>(
      () => ArticleRemoteDataSource(getIt(), baseUrl: Env.host),
    )
    ..registerLazySingleton<IAboutRepository>(
      () => AboutRepository(aboutRemoteDataSource: getIt()),
    )
    ..registerLazySingleton<IArticleRepository>(
      () => ArticleRepository(articleRemoteDataSource: getIt()),
    );
}
