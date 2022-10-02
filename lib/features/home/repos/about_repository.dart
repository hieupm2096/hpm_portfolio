import 'package:hpm_portfolio/core/exceptions/exceptions.dart';
import 'package:hpm_portfolio/core/models/models.dart';
import 'package:hpm_portfolio/features/home/data_sources/data_sources.dart';
import 'package:hpm_portfolio/features/home/models/models.dart';

abstract class IAboutRepository {
  Future<Result<About, Exception>> getAbout();
}

class AboutRepository implements IAboutRepository {
  AboutRepository({
    required AboutRemoteDataSource aboutRemoteDataSource,
  }) : _aboutRemoteDataSource = aboutRemoteDataSource;

  final AboutRemoteDataSource _aboutRemoteDataSource;

  @override
  Future<Result<About, Exception>> getAbout() async {
    try {
      final response = await _aboutRemoteDataSource.getAbout();
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
