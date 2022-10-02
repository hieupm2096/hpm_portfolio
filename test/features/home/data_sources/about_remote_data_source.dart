import 'package:flutter_test/flutter_test.dart';
import 'package:hpm_portfolio/core/network/dio_initializer.dart';
import 'package:hpm_portfolio/features/home/data_sources/about/about_remote_data_source.dart';
import 'package:hpm_portfolio/gen/env.dart';

void main() {
  test(
    'getAbout',
    () async {
      final aboutRemoteDataSource = AboutRemoteDataSource(
        DioInitializer.dio,
        baseUrl: Env.host,
      );

      final response = await aboutRemoteDataSource.getAbout();
      final title = response.data?.title;

      expect(title, 'About the strapi blog');
    },
  );
}
