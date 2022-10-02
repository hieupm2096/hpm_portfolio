import 'package:dio/dio.dart';
import 'package:hpm_portfolio/core/models/models.dart';
import 'package:hpm_portfolio/features/home/models/models.dart';
import 'package:retrofit/http.dart';

part 'about_remote_data_source.g.dart';

@RestApi()
abstract class AboutRemoteDataSource {
  factory AboutRemoteDataSource(Dio dio, {String baseUrl}) =
      _AboutRemoteDataSource;

  @GET('/api/about')
  Future<AboutResponse> getAbout();
}
