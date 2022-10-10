import 'package:bloc/bloc.dart';
import 'package:hpm_portfolio/core/blocs/triple_state.dart';
import 'package:hpm_portfolio/features/home/models/about/about_model.dart';
import 'package:hpm_portfolio/features/home/repos/about_repository.dart';

typedef AboutState = TripleState<AboutModel>;

class AboutCubit extends Cubit<AboutState> {
  AboutCubit({
    required IAboutRepository aboutRepository,
  })  : _aboutRepository = aboutRepository,
        super(const AboutState());

  final IAboutRepository _aboutRepository;

  Future<void> getAbout() async {
    emit(const TripleState.loading());

    await Future<dynamic>.delayed(const Duration(seconds: 10));
    final result = await _aboutRepository.getAbout();

    result.when(
      success: (data) => emit(TripleState.success(data)),
      failure: (failure) => emit(TripleState.failure(failure)),
    );
  }
}
