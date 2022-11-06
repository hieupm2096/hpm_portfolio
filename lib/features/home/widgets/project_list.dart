import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hpm_portfolio/core/network/interceptors/dio_error_l10n.dart';
import 'package:hpm_portfolio/features/home/blocs/project/project_cubit.dart';
import 'package:hpm_portfolio/features/home/models/article/article_model.dart';
import 'package:hpm_portfolio/features/home/widgets/widgets.dart';
import 'package:hpm_portfolio/gen/assets.gen.dart';
import 'package:hpm_portfolio/gen/env.dart';
import 'package:hpm_portfolio/shared/insets/inset.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({
    super.key,
    this.projects,
  });

  final List<ArticleModel>? projects;

  @override
  Widget build(BuildContext context) {
    final projectWidgets = <Project>[];

    if (projects?.isNotEmpty ?? false) {
      projectWidgets.addAll(
        projects!.map(
          (e) {
            final coverUrl = e.cover?.url;

            return Project(
              title: e.title ?? '',
              label: e.note ?? '',
              content: e.description ?? '',
              thumbnail: coverUrl != null
                  ? CachedNetworkImage(
                      imageUrl: '${Env.host}$coverUrl',
                      errorWidget: (context, url, error) => const Icon(
                        Icons.error,
                      ),
                    )
                  : const SizedBox.shrink(),
            );
          },
        ),
      );
    } else {
      projectWidgets.addAll(
        <Project>[
          Project(
            title: 'Digital Factory',
            label: 'Product Design',
            content: 'The Digital Factory is in charge of the digitalization of'
                ' products sold online by Veepee. We provide shooting, storage,'
                ' data writing, media management and staffing solutions for our'
                ' collaborators.',
            thumbnail: Assets.images.image1.image(),
            link: '',
          ),
          Project(
            title: 'ligne roset',
            label: 'Redesign of the website',
            content: 'ligne roset is a French modern furniture company'
                ' founded by  Antoine Roset in 1860.',
            thumbnail: Assets.images.image2.image(),
          ),
          Project(
            title: 'maxfield',
            label: 'Redesign of the website',
            content: 'Los Angeles luxury boutique with curated designer'
                ' and vintage collections for men and women.',
            thumbnail: Assets.images.image3.image(),
          ),
        ],
      );
    }

    return ListView.separated(
      itemCount: projectWidgets.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Inset(child: projectWidgets[index]);
      },
      separatorBuilder: (context, index) {
        return Assets.images.intersectLine.svg();
      },
    );
  }
}

class ProjectListBlocWrapper extends StatelessWidget {
  const ProjectListBlocWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProjectCubit, ProjectState>(
      listener: (context, state) {
        state.maybeWhen(
          () {},
          failure: (error) {
            debugPrint(error.localize(context));
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          SizedBox.shrink,
          loading: ProjectListShimmer.new,
          success: (data) {
            return ProjectList(
              projects: data,
            );
          },
          orElse: SizedBox.shrink,
        );
      },
    );
  }
}
