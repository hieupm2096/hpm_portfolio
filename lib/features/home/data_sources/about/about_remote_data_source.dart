import 'package:dio/dio.dart';
import 'package:hpm_portfolio/core/core.dart';
import 'package:hpm_portfolio/features/home/models/models.dart';
import 'package:hpm_portfolio/gen/env.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'about_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
AboutRemoteDataSource aboutRDS(AboutRDSRef ref) {
  return AboutRemoteDataSource(ref.read(dioProvider), baseUrl: Env.host);
}

@RestApi()
abstract class AboutRemoteDataSource {
  factory AboutRemoteDataSource(Dio dio, {String baseUrl}) =
      _AboutRemoteDataSource;

  @GET('/api/about')
  Future<AboutResponse> getAbout();
}
