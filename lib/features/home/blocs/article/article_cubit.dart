import 'package:bloc/bloc.dart';
import 'package:hpm_portfolio/core/blocs/triple_state.dart';
import 'package:hpm_portfolio/features/home/models/article/article_model.dart';
import 'package:hpm_portfolio/features/home/repos/article_repository.dart';

typedef ArticleState = TripleState<List<ArticleModel>>;

class ArticleCubit extends Cubit<ArticleState> {
  ArticleCubit({required IArticleRepository articleRepository})
      : _articleRepository = articleRepository,
        super(const ArticleState());

  final IArticleRepository _articleRepository;

  Future<void> getArticles() async {
    emit(const ArticleState.loading());

    final result = await _articleRepository.getArticles();

    result.when(
      success: (success) => emit(ArticleState.success(success)),
      failure: (failure) => emit(ArticleState.failure(failure)),
    );
  }
}
