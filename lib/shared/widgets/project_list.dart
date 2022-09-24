import 'package:flutter/material.dart';
import 'package:hpm_portfolio/gen/assets.gen.dart';
import 'package:hpm_portfolio/shared/shared.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final projects = <Project>[
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
        content: 'ligne roset is a French modern furniture company founded by'
            ' Antoine Roset in 1860.',
        thumbnail: Assets.images.image2.image(),
      ),
      Project(
        title: 'maxfield',
        label: 'Redesign of the website',
        content: 'Los Angeles luxury boutique with curated designer and vintage'
            ' collections for men and women.',
        thumbnail: Assets.images.image3.image(),
      ),
    ];

    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.text),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(title: title),
          const Divider(height: 1, color: AppColors.text),
          ListView.separated(
            itemCount: projects.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return projects[index];
            },
            separatorBuilder: (context, index) {
              return Assets.images.intersectLine.svg();
            },

          ),
        ],
      ),
    );
  }
}
