import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hpm_portfolio/core/blocs/triple_state.dart';
import 'package:hpm_portfolio/features/home/models/article/article_model.dart';
import 'package:hpm_portfolio/features/home/repos/article_repository.dart';

typedef ProjectState = TripleState<List<ArticleModel>>;

class ProjectCubit extends Cubit<ProjectState> {
  ProjectCubit({
    required IArticleRepository articleRepository,
  })  : _articleRepository = articleRepository,
        super(const ProjectState());

  final IArticleRepository _articleRepository;

  Future<void> getWorks() async {
    emit(const ProjectState.loading());

    final result = await _articleRepository.getWorks();

    result.when(
      success: (success) => emit(ProjectState.success(success)),
      failure: (failure) => emit(ProjectState.failure(failure)),
    );
  }
}
